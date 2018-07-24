#Trrabalhando com data e hora,
#pacote lubridate

#Time e datas

#Hora e data do sistema

hoje<- Sys.Date()
hoje
class(hoje)
Sys.time()
Sys.timezone()
#data - representando por date
#Armazenados como numero de dias desde 1/1/1970

#Time - Representando por POSIXct
#Armazendas como numero de segundos desde 1/1/1970

#Formatando datas
#%d: dia do mes em 2 digitos
#%m: mes em 2 digitos
#%y: ano em 2 digitos
#%Y: ano em 4 digitos
#%A: dia da semana por inteiro
#%a: dia da semana abreviado
#%B: mes
#%b: mes abreviado

#Formatando TIme

#%H: hora(00-23)
#%M: minuto
#%S: segundo
#%T: reduzido para %H
?strptime

#Formatando a saida - as.Date()
as.Date('2016-06-28')
as.Date('20160628434')
as.Date('28 June, 2016', format = "%d %B, %Y")
#Função format()

Sys.Date()
format(Sys.Date(), format= "%d %B, %Y")
format(Sys.Date(), format= "Hoje é %A!")

my_time <- as.POSIXct(Sys.Date())
my_time
my_time +1


mydab1 = ISOdate(2011,3,23)
mydab1
mydab2 = ISOdate(2012,9,19)
mydab2 - mydab1
difftime(mydab2, mydab1, units = 'days')

#pactoe lubridate
install.packages('lubridate')
library(lubridate)
ymd('20160402')
mdy('06-04-2016')
chegada <-ymd_hms('2016-05-01 12:00:00', tz = 'Pacific/Auckland')
partida <-ymd_hms('2011-03-26 14:00:00', tz = 'Pacific/Auckland')
chegada
partida

second(chegada) <-23
wday(chegada)
wday(chegada, label = TRUE)
class(chegada)
interval(chegada, partida)

tm1.lub <- ymd_hms('2016-05-24 23:55:26')
