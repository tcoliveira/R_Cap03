#Pacotes e instalação de pacotes

search()
install.packages(c('ggvis', 'tm', 'dplyr'))
library(ggvis)
library(tm)
require(dplyr)
?require
detach(package:dplyr)
search()
?attach

ls(pos = 'package:tm') ## verifica a lista de funções dentro do pacote
ls(getNamespace('tm'), all.names = TRUE) ##Tras o nome completo da função.

lsf.str('package:tm')##especificação do pacote.

install.packages('ggplot2')
library(ggplot2)
lsf.str('package:ggplot2')
search()

library(MASS)
DATA
data()
head(lynx)
summary(lynx)
plot(lynx)
iris$Sepal.Length
sum(iris$Sepal.Length)
attach(iris)
sum(Sepal.Length)
