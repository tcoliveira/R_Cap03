##Mapas

#ggmpap

install.packages('ggmap')
install.packages('mapproj')
library(ggmap)
library(mapproj)
map1<-get_map(location = c(lon = - 51.9253 , lat =-14.2350 ), zoom = 4)
map2<-get_map(location = c(lon = 54.5260, lat = 25.2551), zoom = 4)
?get_map
ggmap(map1)
ggmap(map2)

qmap('Recife')
qmap('L69 3GP', zoom = 16)
qmap('L69 3GP', zoom = 16, maptype = 'satellite')

#Estadio Olimpico de Londres

?maptype
mapImageData1<- get_map(location = c(lon = -0.016179, lat= 51.538525),
                        color = 'color',
                        source = 'google',
                        maptype = 'satellite',
                        zoom = 17)
ggmap(mapImageData1,
      extent = 'device',
      ylab = 'Latitude',
      xlab = 'Longitude')
mapImageData1<- get_map(location = c(lon = -0.016179, lat= 51.538525),
                        color = 'color',
                        source = 'google',
                        maptype = 'hybrid',
                        zoom = 17)
#Maps
install.packages('mapdata')
install.packages('maps')
library(maps)
library(mapdata)
map('worldHires', 'Canada',
    xlim = c(-141,-53),
    ylim = c(40, 85),
    col = 'gray90',
    fill = TRUE)

?MAP
?map
help(package = 'maps')

#graficos de Rede, interativos

install.packages('networkD3')
library(networkD3)
data(MisLinks, MisNodes)
forceNetwork(Links = MisLinks, Nodes = MisNodes, Source = 'source',
             Target = 'target', Value = 'value', NodeID = 'name',
             Group = 'group', opacity = 0.4)

?networkD3

#Criando dados
src<- c('A','A','A','A',
        'B','B','C','C','D')
target<-c('B','C','D','J',
          'E','F','G','H','I')
networkData <-data.frame(src, target)

#Plot
simpleNetwork(networkData)
#Heatmap
install.packages('heatmaply')
library(heatmaply)
heatmaply(mtcars, k_col = 2, k_row = 3) %>% layout(margin = list(l = 130, b=40))

#graficos interativo

install.packages('dygraphs')
library(dygraphs)
dygraph(nhtemp, main = 'Temperaturas')%>%
  dyRangeSelector(dateWindow = c('1920-01-01','1960-01-01'))

install.packages('rmaps')
