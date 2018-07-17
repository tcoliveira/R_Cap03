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
