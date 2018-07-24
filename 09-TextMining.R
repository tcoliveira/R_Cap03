#Text Mining
#Exemplo1
install.packages(c('tm','SnowballC','wordcloud','RColorBrewer'))
library(tm)
library(SnowballC)
require(SnowballC)
library(wordcloud)
library(RColorBrewer)
library(slam)
#Carregando o dataset

df<-read.csv('C:\\Users\\BI\\Documents\\Data Science - Curso\\RFundamentos_git\\questoes.csv', stringsAsFactors = FALSE)
head(df)
tail(df)
#Criando um corpus
dfCorpus <-Corpus(VectorSource(df$Question))#Corpus = Conjunto de dados estruturados, preapardo para o TM
?tm_map
head(dfCorpus)
class(dfCorpus)
#Convertendo o corpus em um documento de texto plano
dfCorpus<- tm_map(dfCorpus, PlainTextDocument)
#Remover pontuação
dfCorpus<- tm_map(dfCorpus, removePunctuation)
#Remover palavaras especificas do ingels
dfCorpus<-tm_map(dfCorpus, removeWords, stopwords('english'))
#Neste processo, varias versões de palavras são convertidas em um unica
dfCorpus<-tm_map(dfCorpus, stemDocument)
#Removendo palavras especificas
dfCorpus<-tm_map(dfCorpus, removeWords, c('the', 'this', stopwords(('english'))))
#Wordcloud

dfCorpus <- iconv(dfCorpus, "UTF-8")
wordcloud(dfCorpus, max.words = 100, random.order = FALSE)
?wordcloud

#Exemplo 2

install.packages('tm')
install.packages('wordcloud')
install.packages('SnowballC')
install.packages('RColorBrewer')
?library
library('tm')
library('wordcloud')
library('SnowballC')
library('RColorBrewer')
??readlines
##Lendo arquivo da internet
arquivo <- "http://www.sthda.com/sthda/RDoc/example-files/martin-luther-king-i-have-a-dream-speech.txt"
texto <- readLines(arquivo)
#Carregando os dados com o Corpus
docs <- Corpus(VectorSource(texto))#Corpus tem estrtura propria para analise estatistica de string
#Pre-processamento
inspect(docs) #ver os metadatos encontrados
docs <- tm_map(docs, PlainTextDocument)
toSpace <- content_transformer(function (x , pattern ) gsub(pattern, " ", x))
docs <- tm_map(docs, toSpace, "/")
docs <- tm_map(docs, toSpace, '@')
docs <- tm_map(docs, toSpace, '//|')

#Convertendo o texto para minusculo
docs <- tm_map(docs, content_transformer(tolower))

#Remove numeros
docs <- tm_map(docs, removeNumbers)

#Remove as palavras mais comuns do idioma ingles
docs<- tm_maps(docs, removeWords, stopwords('english'))

#Definir um vetor de palarvaras para semrem removidos
docs <-tm_map(docs, removeWords, c('blabla','blablablablba'))
#remover potunação
docs<-tm_map(docs, removePunctuation)
#Tirar espaços extras
docs<-tm_map(docs, stripWhitespace)
#text stemming
docs<-tm_map(docs, stemDocument)

dtm<-TermDocumentMatrix(docs)
m<-as.matrix(dtm)
v<-sort(rowSums(m), decreasing = TRUE)
d<-data.frame(word = names(v), freq=v)
head(d,10)
dtm
m
v
d
#wordcloud

set.seed(1234)
