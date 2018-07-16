##Vetores = cadeia ordenadas de elementos
#Loops são ineficientes no R, pode ser a familia apply

#Apply, aplica uma função a todas as linhas / colunas de uma matriz / df
#lapply, retorna nova lista / sapply
#tapply 



#Usando loop
lista1 <- list(a = (1:10), b = (45:77))
?sapply
sapply(lista1, mean) ###objeto que quero percorrer, função. sapply é um loop
x <- matrix(rnorm(9), nr = 3, byrow = T)
x
apply(x, 1, mean)
apply(x, 2, mean)
apply(x, 1, plot)

resultapply <- apply(x, 1, mean)
resultapply

escola <- data.frame(Aluno = c("Allan", "Alice", "Aline", "Alana", "Alex", "Adovaldo"),
                     Matematica = c(90,80,85,87,56,79),
                     Geografia = c(88,81,85,20,21,30),
                     Quimca = c(78,60,74,60,51,90))
escola
escola$Geografia

#Calculando a media por aluo
escola$Media = NA
escola
escola$Media = apply(escola[,c(2,3,4)],1,mean)
escola

escola$Media = round(escola$Media)
escola

##tapply() sqldf
install.packages('sqldf')
require(sqldf)
escola2 <- data.frame(Aluno = c("Allan", "Alice", "Aline", "Alana", "Alex", "Adovaldo"),
                     Semestre = c(1,1,1,2,2,2),
                     Matematica = c(90,80,85,87,56,79),
                     Geografia = c(88,81,85,20,21,30),
                     Quimca = c(78,60,74,60,51,90))
escola2

sqldf("select aluno, sum(Matematica), sum(Geografia), sum(Quimca) from escola2 group by aluno")
tapply(c(escola2$Matematica), escola2$Aluno, sum)

?by

#lapply()
?lapply
lista1<- list(a = (1:10), b = (45:77))
lista1
lapply(lista1, sum)
sapply(lista1, sum)

#vapply()

vapply(lista1, fivenum, c(Min. =0, "1st"=0))
