##lattice

# Obs: Caso tenha problemas com a acentuação, consulte este link:
# https://support.rstudio.com/hc/en-us/articles/200532197-Character-Encoding

# Configurando o diretÃ³rio de trabalho
# Coloque entre aspas o diretÃ³rio de trabalho que vocÃª estÃ¡ usando no seu computador
# NÃ£o use diretÃ³rios com espaÃ§o no nome
setwd("Z:/Dropbox/DSA/BigDataAnalytics-R-Azure/Cap03")
getwd()

# O pacote Lattice Ã© um sistema de visualizaÃ§Ã£o de dados 
# de alto nÃ�vel poderoso e elegante, com Ãªnfase em dados 
# multivariados. 

# Na criaÃ§Ã£o de grÃ¡ficos, condiÃ§Ãµes e agrupamentos sÃ£o 2 conceitos
# importantes, que nos permitem compreender mais facilmente
# os dados que temos em mÃ£os. O conceito por trÃ¡s do Lattice
# Ã© agrupar os dados e criar visualizaÃ§Ã£oes de forma que fique 
# mais fÃ¡cil a busca por padrÃµes

install.packages('lattice')
library(lattice)
xyplot(data = iris, groups = Species, Sepal.Length ~Petal.Length)
#Scatterplot
splom(trees) #agrupar num unico elemento visual.
?Titanic

barchart(Class ~ Freq | Sex + Age, data = as.data.frame(Titanic),
         groups = Survived, stack = T, layout=c(4,1),
         auto.key = list(title = 'Dados Titanic', columns = 2),
        scales = list(x = 'free'))

x = equal.count(rivers)
x

Petallength <-equal.count(iris$Petal.Length, 4)
Petallength
xyplot(Sepal.Length~Sepal.Width | Petallength, data=iris)
