##text mining
#Expressões regulares

?grep
str<-c('Expresspes', 'Regulares', 'Em R', 'permitem a busca de padrões','Exploração de textos',
       'como exemplo', '123456')
length(str)
str
#grep

grep('ex',str,value=F)
grep('ex',str,value=T)
grep('\\d',str,value=F) #\\d = digitos ; \\D = não digitos
grep('\\d',str,value=T)

#grepl
grepl('\\d+', str)
grepl('\\D', str) ###não digito

#gsub
gsub('em', '|', str)
gsub('ex', 'EX', str, ignore.case =  TRUE)

#sub()
sub('em', 'EM', str)

#regexpress()
frase<- 'Isso é uma string.'
regexpr(pattern = 'u', frase)

#gregexpress("
gregexpr(pattern = 'u', frase)

str2<- c('2678 é maior que 45 - @???#%',
         'Vamos escrever 14 scripts R')
str2
gsub('\\d','',str2)
gsub('\\D','',str2)
gsub('\\s','',str2)
gsub("[iot]",'Q',str2)
gsub("[^@]",'',str2)
