#Funcoes especiais
#unlista
#produz um vetor com os elementos de uma lista
?unlist

list1 <- list(6,"b",15)
list1
vec1 <-unlist(list1)
class(vec1)

lst2 <- list(v1=6, v2 = list(381,2190), v3=c(30,217))
lst2
unlist(lst2)
mean(unlist(lst2))
round(mean(unlist(lst2)))

#do.call
#Executa uma função em um objeto
#ATENÇÃO
#As funções da familia apply aplicam uma função em cada elemento do objeto(substitui um loop)
#A função do.call aplica uma função ao objeto inteiro e não individualmente

?do.call
data<- list()
n<-100
for(i in 1:n){
  data[[i]] = data.frame(index=i, char = sample(letters, 1), z = rnorm(1))
}
head(data)

class(do.call(rbind, data))

#lapply() x do.call()
y<- list(1:3, 4:6,7:9)
y
lapply(y, sum)
do.call(sum, y)

#O resultado da função do.call() pode ser obtido de outra

install.packages('plyr')
library(plyr)
y<- list(1:3, 4:6,7:9)
y
ldply(y, sum)

install.packages('rbenchmark')
#strplit()
#Divide uma string ou vetor de caracteres

texto <- "string sim é. "
strsplit(texto, " ")

dates <- c("1999-05-01", "2001-12-30", "2004-12-17")
temp <- strsplit(dates, "-")
temp
class(temp)
matrix(unlist(temp), nc=3, byrow = TRUE)

Names<- c("Brin, Segery", "Page, Larry",
          "Dorsey, Jack", "Galss, Noah",
          "Will, Evan", "Stone, Biz")
cofounded <- rep(c("Google", "Twitter"), c(2,4))
temp<-strsplit(Names, ", ")
temp

frase <- "Repetição muitas vezes acontecem e acontecem varias vezes"
palavras <- strsplit(frase, " ")[[1]]
palavras
unique(tolower(palavras))
antes = data.frame( attr = c(1,34,4,5), tipo = c('pao_agua', "agua_pao"))
antes
strsplit(as.character(antes$tipo), '_')
library(stringr)
install.packages("stringr")
str_split_fixed(antes$tipo, "_", 2)
install.packages('dplyr')
install.packages('tidyr')
library(dplyr)
library(tidyr)


#Pra encerrar

#Operação de atribuição

vec1 = 1:4

vec2<-1:4
mean(x=1:10) 
x ##objeto não criado, apenas um atributo para a func mean; só existiu durante a a execução

mean(x<-1:10)
x

#Criação de objetos

v1 = 1:4
v2=c(1:4)
v3=c(1,2,3,4)
v1
v2
v3
class(v1)
class(v2)
class(v3)
