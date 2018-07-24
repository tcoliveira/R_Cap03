##Graficos em R

#Lista de pacotes base carregadas
search()

#Demo
demo('graphics')

#Plot basico
x = 5:7
y=8:10
plot(x,y)
altura <-c(145,167,176,123,150)
largura<-c(51,63,64,40,55)
plot(altura, largura)
#Plotnado um dataframe
?lynx
plot(lynx)
plot(lynx, ylab = 'Plots com dataframe', xlab = "")
plot(lynx, ylab = 'Plots com dataframe', xlab = "Observações")
plot(lynx, main = 'Plots com dataframe', col = 'red')
plot(lynx, main = 'Plots com dataframe', col = 'red', col.main = 5)

library(datasets)
hist(warpbreaks$breaks)

airquality &lt; - transform(airquality, Month = factor(Month))
boxplot(Ozone ~Month, airquality, xlab = 'Month', ylab = 'Ozone')

#Especificando parametros
?par
par()
par('pch')
par('lty')
x = 2:4
plot(x, pch = 'c')
par(mfrow = c(2,2), col.axis = 'red')
plot(1:8, las = 0, xlab = 'xlab', ylab ='ylab', main = 'LAS =0')
plot(1:8, las = 1, xlab = 'xlab', ylab ='ylab', main = 'LAS =1')
plot(1:8, las = 2, xlab = 'xlab', ylab ='ylab', main = 'LAS =2')
plot(1:8, las = 3, xlab = 'xlab', ylab ='ylab', main = 'LAS =3')
legend('topright', pch = 1, col = c('grey40', 'red'), legend = c('Var1', 'Var2'))

#Cores disponibeis
colors()

#Salvando os graficos

png('grafico1.png', width = 500, height =  500, res = 72)
plot(iris$Sepal.Length, iris$Petal.Length, col = iris$Species, main='Grafico do Iris')
dev.off()

#Estendo as funcções do plot

install.packages('plotrix')
library(plotrix)
?plotrix
plot(1:6, las = 3, xlab = 'lty 1:6', ylab = '', main = 'Mais opções')
ablineclip(v=1, lty = 1, col='sienna2', lwd = 2)
ablineclip(v=2, lty = 1, col='sienna2', lwd = 2)
ablineclip(v=3, lty = 1, col='sienna2', lwd = 2)
ablineclip(v=4, lty = 1, col='sienna2', lwd = 2)
ablineclip(v=5, lty = 1, col='sienna2', lwd = 2)
ablineclip(v=6, lty = 1, col='sienna2', lwd = 2)
plot(lynx)

plot(lynx, type = 'p', main='Type p')
plot(lynx, type = 'l', main='Type l')
plot(lynx, type = 'b', main='Type b')

#Dois plots juntos 
par(mar=c(4,3,3,3), col.axis='black')

plot(cars$speed, type = 's', col = 'red', bty = 'n', xlab='Cars ID', ylab='')
text(8,14,"Velocidade", cex=0.85, col='red')
par(new=T)

plot(cars$dist, type = 's', ann= F, axes = F, col = 'darkblue', bty = 'n', xlab='Cars ID', ylab='')
axis(side=4)
text(37,18,"Distancia", cex=0.85, col='darkblue')
par(new=T)
title(main='Velocidade x Distancia')


#Plots a partir de dataset

df<-read.csv('C:\\Users\\BI\\Documents\\Data Science - Curso\\RFundamentos_git\\pibpercap.csv', stringsAsFactors = F)
df_1982 <- subset(df, ano ==1982)
plot(expectativa ~pibpercap, data = df_1982, log = 'x')

mycol<- c(Asia = 'tomato', Europe = 'chocolate4', Africa = 'darkblue',
          Americas = ' darkgoldenrod1', Oceania = 'green4')
plot(expectativa ~pibpercap, data = df_1982, log='x', col = mycol[continente])

mycex <- function(var, r, f = sqrt){
  x = f(var)
  x_scaled = (x -min(x))/(max(x) - min(x))
  r[1] + x_scaled * (r[2] - r[1])
}

plot(expectativa ~pibpercap, data=df_1982, log = 'x',
     col = mycol[continente],
     cex = mycex(pop, r = c(0.2, 10)))
