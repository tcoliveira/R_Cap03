#Fatores

vec1 <- c("Macho", "Femea", "Femea", "Macho", "Macho")
fac_vetor1 <- factor(vec1)
fac_vetor1 
class(vec1)
class(fac_vetor1)

#Variaveis categorias
#não existe uma ordem

animais <-c("Zebra", "Pantera", "Rinocerontes", "Macaco", "Tigre")
animais
class(animais)
fac_animais <-factor(animais)
fac_animais
class(fac_animais)
levels(fac_animais)
##Variaveis categoricas ordinais
#possuem ordem natural
grad <- c("Mestrado", "Doutorado", "Bacharelado", "Mestrado", "Mestrado")
grad
fac_grad <- factor(grad, order = TRUE, levels = c("Doutorado", "Mestrado", "Bacharelado"))
fac_grad                

#Sumarizar os dados forcenece uma visão geral sobre o conteudo

summary(fac_grad)
summary(grad)

vec2 <- c("M","F","F", "M", "M","M","F","F","M","M")
vec2
fac_vec2<-factor(vec2)
fac_vec2
levels(fac_vec2)<-c("Femea", "Macho")
summary(fac_vec2)
summary(vec2)

##Mais exemplos

data = c(1,2,2,3,1,2,3,3,1,2,3,3,1)
fdata = factor(data)
fdta
fdata

rdata = factor(data,labels = c("I", "II", "III"))
rdata
##fatores não ordenados

set1 <- c("AA", "B", "BA", "CC", "CA", "AA", "BA")
set1

#Transofrmandos os dados. O R criou apenas os niveis
f.set1 <- factor(set1)
f.set1
is.ordered(f.set1)

#Fatores ordenados
o.set1 <- factor(set1, levels = c("CA", "BA", "AA", "CC", "B"),
                 ordered =TRUE)
o.set1

as.numeric(o.set1)
table(o.set1)

#Fatores e dataframes
system.time(df <- fread("C:\\Users\\BI\\Documents\\Data Science - Curso\\RFundamentos_git\\etnias.csv", sep = ','))

df

df1 <- read.csv2("C:\\Users\\BI\\Documents\\Data Science - Curso\\RFundamentos_git\\etnias.csv", sep = ',')
#Variaveis do tipo fator
str(df1)

levels(df1$Etnia)
summary(df1$Etnia)

#Plot
#Um box plot 
plot(df1$Idade~df1$Etnia, xlab = 'Etnia', ylab = 'Idade', main = 'Idade por Etnia')
summary(lm(Idade~Etnia, data=df1))
df1

str(df)
df1$Estado_Civil.cat <- factor(df1$Estado_Civil, labels=c("Solteiro", "Casado", "Separado"))
df1
str(df1)
