###Funções

#Help
?sample ###args = parametros / 
args(sample)
args(mean)
args(sd) ##sd = desvio padrão.

#Função built in
abs(-43) # valor absoluto
sum (c(1:5)) #soma
mean(c(1:5)) # media
round(c(1.1:5.8)) # arredonda
rev(c(1:5)) #reverte
seq(1:5) #cria vetor = c()
sort(rev(c(1:5))) # ordena
append(c(1:5), 6) #add ao vetor
vec1 <- c(1.5,2.5,8.4,3.7,6.3)
vec1
vec2 <- rev(vec1)
vec2

#Função dentro de função

plot(rnorm(10))
mean(c(abs(vec1), abs(vec2)))
#Crinado funções

myfunc <- function(x) {x+x} #recebe parametro {executa operação}
myfunc(10)
class(myfunc)

myfunc2 <- function(a,b) {
  valor = a^b
  print(valor)
}
myfunc2(3,2)

jogando_dados <- function() {
  num <- sample(1:6, size=1) #Local
  num
} ###sample = valor aleatorio
jogando_dados()
#Escopo
print(num) ##vai dar erro, pois só existe dentro da função jogando_dados()
num <- c(1:6) ##Global
num

##Funções sem numeros dfenidios de argumentos
vec1 <- (10:13)
vec2 <- c("a", "b", "c", "d")
vec3<- c(6.5,7.5,9.2,11.9)

myfunc3 <- function(...){
  df = data.frame(cbind(...))
  print(df)
}
myfunc3(vec1)
myfunc3(vec1, vec2)
