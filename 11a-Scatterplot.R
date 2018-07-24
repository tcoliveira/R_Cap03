##Scatterplots

#Define dados

set.seed(67)
x = rnorm(10,5,7)
y = rpois(10,7)
z = rnorm(10,6,7)
t = rpois(10,9)

#Cria o Plot

plot(x, y, col = 123, pch = 10, main = "Multi Scatterplots",
     col.main = 'red', cex.main = 1.5, xlab='indep',
     ylab = 'depen')

#add mais variavies ao scatterplots

points(z, t, col = 'blue', pch = 4)

#add outros dados
points(y, t, col = 777, pch = 9)

#cria legenda
legend(-6,5.9, legend = c('Nivel 1', 'Nivel 2', 'Nivel 3'),
       col = c(123, 'blue', 777), pch = c(10,4,9),
       cex = 0.65, bty = 'n')
?boxplot
?sleep

#permite utilizar as colunas sem especificar o nome do dataset
attach(sleep)

#Construção do boxplot

sleepboxplot = boxplot(data = sleep, extra ~ group,
                       main = 'Duração do Sono',
                       col.main = 'red', ylab = 'Horas', xlab = 'Drogas')
#Calculo da media

means = by(extra, group, mean)

#Adiciona a media ao grafico
points(means, col ='red')

#Boxplot horizontal
horizontalboxplot = boxplot(data = sleep, extra ~group,
                            ylab = '', xlab = '', horizontal = T)
horizontalboxplot = boxplot(data = sleep, extra ~group,
                            ylab = '', xlab = '', horizontal = T,
                            col = c('blue', 'red'))

?hist
?cars

#Definindo os dados
dados = cars$speed
#Construindo um histograma
hist(dados)
hist(dados, breaks = 10)
hist(dados, labels = T, breaks =c(0,5,10,20,30))
hist(dados, labels = T, breaks =10)
hist(dados, labels = T, ylim=c(0,10), breaks = 10)

#add linhas ao histograma
hey = hist(dados, breaks = 10) #Removendo os lables
xaxis =seq(min(dados), max(dados), length= 10) #sequencia de valores
yaxis = dnorm(xaxis, mean = mean(dados), sd = sd(dados))
yaxis = yaxis*diff(hey$mids)*length(dados)
lines(xaxis, yaxis, col = 'red') #distribuição normal
#pie grapph

?pie

#criando as fatias

fatias = c(40,20,40)
#nomeandos os labes
paises=c('Brasil', 'Chile', 'Argentina')

#Unindo paises e fatias
paises = paste(paises, fatias)

#sem separador
paises = paste(paises, '%', sep ='')
colors()

#Construindo um grafico
pie(fatias, labels = paises, 
    col = c('azure', 'darksalmon', 'wheat4'), main = 'Distruibuição')

#Trabalhando com dataframes
?iris
attach(iris)
Values = table(Species)
labels = paste(names(Values))
pie(Values, labels, main = 'Especie')

#3D grafico
library(plotrix)

pie3D(fatias, labels = paises, explode = 0.05,
      col=c('steelblue1','tomato2','tan3'),
      main = 'Distrubição de vendas')

#Barplot
?barplot

#preparando os dados

casamentos <- matrix(c(652,1537,598,242,36,46,38,21,218,357,106,67),
                     nr=3, byrow = T)
#Nomeando a matriz

colnames(casamentos)<-c('0','1-150','151-300','>300')
rownames(casamentos)<-c('Casado','Solteiro', 'Divorciado')

#Construindo um plot
barplot(casamentos)
barplot(casamentos, beside=T)

#Transposta da matriz
barplot(t(casamentos), beside = T)
