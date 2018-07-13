##Vetores = cadeia ordenadas de elementos
#Loops são ineficientes no R, pode ser a familia apply

#Apply, aplica uma função a todas as linhas / colunas de uma matriz / df
#lapply, retorna nova lista / sapply
#tapply 



#Usando loop
lista1 <- list(a = (1:10), b = (45:77))
?sapply
sapply(lista1, mean)


x <- matrix(rnorm(9), nr = 3, byrow = T)
