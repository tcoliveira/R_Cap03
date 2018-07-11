##Revisão e aprofundamento

#interagind com o sistema operacional
list.files() #no diretorio
.Platform$OS.type #verifica o OS
.Platform$file.sep
Sys.Date()
Sys.info()
R.version
?system
system('ls -a')

#Criando um vetor
vec1<- c(12,3,4,19,34)

#criando uma matrix; Dados bidimensionais com o mesmo tipo de dados
dados <- c(1:50)
mat1<- matrix(dados, nr =5, nc = 5, byrow = T)
mat1

#criando listas; Dados bidimensionais com o mesmo tipo de dados
list1<- list(vec1,mat1)
list1

#Criando um dataframe; Dados bidimensionais que aceita diversos tipos de dados

char_vec <- c("a","b","c")
num_vec<- c(4.5, 5.6,6.12)
logic_vec <- c(TRUE, FALSE, TRUE)
df1<- data.frame(char_vec, num_vec,logic_vec)
df1
# comparando vetores e matrizes
vec1>10 # verifica se cada elemento é maior que 10
mat1> 20# verifica se cada elemento é maior que 20
mat1 ==2 # existe algum elemento igual a 2?
mat1==2 | mat1==3 ##existe um valor 2 ou 3?
mat1 >2 & mat1<4 # valor menor que 4 e maior que 2
!mat1 > 2 & mat1 <4 ## negar a afirmação

for (i in length(vec1)){
  if(vec1[i]>10){
    print('Ao menos um elemento é maior que 10')
  }else{
    print('Todos os elemensto são menores que 10')
  }
}

for (i in length(vec1)){
  if(vec1[i]>10){
    vetor <- c(i, vec1[i])
    print(vetor)
  }else{
    print('Todos os elemensto são menores que 10')
  }
}

#Operações com listas e matrizes

lst2 <- list(2, 3,5,7,11,13)
lst2

for (p in lst2){
  print(p)
}

for (i in 1:length(lst2)){
  print(lst2[[i]])
}
mat2<-t(mat1)
mat2

# somando matrizes
for(i in mat1){
  for (j in mat2){
    total <- sum(mat2) + sum(mat1)
  }
}
print(total)

#Noemando os vetores, matrizes, listas e dfs
names(vec1) <- c ('Col1', 'Col2', 'Col3', 'Col4', 'Col5')
vec1
dimnames(mat1)=(list(c("Obs1", "Obs2", "Obs3", "Obs4", "Obs5"), c("Var1", "Var2", "Var3", "Var4", "Var5")))
mat1
names(list1) <- c('Vetor', 'Matriz')
list1
df1
colnames(df1) <- c ('Caracteres', 'Float', "Inteiros")
rownames(df1) <- c ('Obs1', 'Obs2', "Obs3")


#Verificando e convertendo

is.vector(vec1) ###verificação
is.vector(mat1)

as.vector(mat1) ###conversão

as.list(mat1)
mat1

df1
as.matrix(df1)
as.numeric(df1)


#Valores NA
mat2 <- matrix(1:90, 10)
mat2
mat2[sample(1:50, 10)] = NA

?is.na

na_lista <- is.na(mat2)
na_lista

#Operação com objetos
vec1
sum(vec1)
mat1
rowSums(mat1)
colSums(mat1)
cbind(vec1, mat1)
rbind(vec1, mat1)
mat1*3
# Ranking e order de dados

a<- c(100, 10 , 10000)
a
order(a)
a[order(a)]
#Slicing
vec1
vec1[2] # entre [] a posição do que quero ver
mat1
mat1[,2]
list1
list1[[1]][3:4]
list1$Matriz
###dataframes
mtcars
head(mtcars)
tail(mtcars)
str(mtcars)
mtcars[,5]
library(dplyr)
slice(mtcars, 1:4)
