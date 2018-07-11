#Big data na pratica 1 - temperatura media nas cidades brasileiras

# dataset:
# berkely earth
# http://berkeleyearth.org/data
#Temperatura globais.csv ~78mb(zip) ~496mb(unzip)

#instalando e carregando os pacotes
install.packages("scales")
install.packages("readr")
install.packages("data.table")
library(readr)
library(dplyr)
library(ggplot2)
library(scales)
library(data.table)

#Carregando os dados(usando um timer para comparar o tempo)

#Usando read.csv2()

system.time(df_teste1<- read.csv2("TemperaturasGlobais.csv"))
#Usando read.table()
system.time(df_teste2<- read.table("TemperaturasGlobais.csv"))

#Usando fread()
system.time(df_teste3 <- fread("C:\\Users\\BI\\Documents\\Data Science - Curso\\RFundamentos_git\\TemperaturasGlobais.csv"))

system.time(df_teste3 <- fread("TemperaturasGlobais.csv"))

#Criando subsets

cidadeBrasil <-subset(df_teste3, Country == 'Brazil')
cidadeBrasil <-na.omit(cidadeBrasil)
head(cidadeBrasil)
nr(df)
nrow(df)
nrow(cidadeBrasil)
dim(cidadeBrasil)


#Preparando e organizando

#convertendo as datas
cidadeBrasil$dt <- as.POSIXct(cidadeBrasil$dt, format= '%Y-%m-%d')
cidadeBrasil$Month <- month(cidadeBrasil$dt)
cidadeBrasil$Year <- year(cidadeBrasil$dt)

#Carregandos os subsets

#Palmas
plm <- subset(cidadeBrasil, City == 'Palmas')
plm <- subset(plm, Year %in% c(1796, 1846, 1896, 1946, 1996, 2012))

#Curitiba
crt <- subset(cidadeBrasil, City == 'Curitiba')
crt <- subset(crt, Year %in% c(1796, 1846, 1896, 1946, 1996, 2012))

#Recife
recf <- subset(cidadeBrasil, City == 'Recife')
recf <- subset(recf, Year %in% c(1796, 1846, 1896, 1946, 1996, 2012))

##Construindo os Plots
p_plm <- ggplot(plm, aes(x=(Month), y= AverageTemperature, color = as.factor(Year))) + 
  geom_smooth(se = FALSE, fill = NA, size=2) + 
  theme_light(base_size = 20) + 
  xlab("Mes")+
  ylab("Temperatura Media") +
  scale_color_discrete("")+
  ggtitle("Temperatura media ao longo dos anos em Palmas")+
  theme(plot.title = element_text(size=18))

p_crt <- ggplot(crt, aes(x=(Month), y= AverageTemperature, color = as.factor(Year))) + 
  geom_smooth(se = FALSE, fill = NA, size=2) + 
  theme_light(base_size = 20) + 
  xlab("Mes")+
  ylab("Temperatura Media") +
  scale_color_discrete("")+
  ggtitle("Temperatura media ao longo dos anos em Palmas")+
  theme(plot.title = element_text(size=18))

p_recf <- ggplot(recf, aes(x=(Month), y= AverageTemperature, color = as.factor(Year))) + 
  geom_smooth(se = FALSE, fill = NA, size=2) + 
  theme_light(base_size = 20) + 
  xlab("Mes")+
  ylab("Temperatura Media") +
  scale_color_discrete("")+
  ggtitle("Temperatura media ao longo dos anos em Palmas")+
  theme(plot.title = element_text(size=18))


#Exibindo os plots
p_plm
p_crt
p_recf
