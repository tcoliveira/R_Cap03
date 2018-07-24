# googleVis - VisualizaÃ§Ãµes Interativas

# Obs: Caso tenha problemas com a acentuaÃ§Ã£o, consulte este link:
# https://support.rstudio.com/hc/en-us/articles/200532197-Character-Encoding

# Configurando o diretÃ³rio de trabalho
# Coloque entre aspas o diretÃ³rio de trabalho que vocÃª estÃ¡ usando no seu computador
# NÃ£o use diretÃ³rios com espaÃ§o no nome
# Baseado no Google Chart (visualizaÃ§Ã£o de dados na web)
# googlevis Ã© um pacote que fornece interface entre R e o Google Charts
# Utiliza JavaScript e arquivos JSON. Os dados sÃ£o transformados em formato JSON
# O resultado Ã© gerado em HTML5 ou Flash
# Pose-se criar os mais variados tipos de grÃ¡ficos e mapas. Inclusive Google Maps
# VocÃª pode incorporar os grÃ¡ficos criados em pÃ¡ginas HTML ou apps
# Verificar termos de uso, antes de utilizar

install.packages('googleVis')
library(googleVis)
#Gera o grafico no broswer

# Criando um Datafrane
df = data.frame(Pais = c("BR", "CH", "AR"), 
                Exportacoes = c(10,13,14), 
                Importacoes = c(23,12,32))
#Grafico de linha
Line<-gvisLineChart(df)
plot(Line)

Column <- gvisColumnChart(df)
plot(Column)

#Grafico barras horizontal
Bar<-gvisBarChart(df)
plot(Bar)

#Grafico barras horizontal
Pie<-gvisPieChart(CityPopularity)
plot(Pie)

# GrÃ¡ficos Combinados
Combo <- gvisComboChart(df, xvar = "Pais",
                        yvar = c("Exportacoes", "Importacoes"),
                        options = list(seriesType = "bars",
                                       series='{1: {type:"line"}}'))
plot(Combo)

#Scatter chart
Scatter <- gvisScatterChart(women, 
                            options=list(
                              legend="none",
                              lineWidth=2, pointSize=0,
                              title="Women", vAxis="{title:'weight (lbs)'}",
                              hAxis="{title:'height (in)'}", 
                              width=300, height=300))
plot(Scatter)

#Buble
Bubble <- gvisBubbleChart(Fruits, idvar="Fruit", 
                          xvar="Sales", yvar="Expenses",
                          colorvar="Year", sizevar="Profit",
                          options=list(
                            hAxis='{minValue:75, maxValue:125}'))
plot(Bubble)
# Customizando
M <- matrix(nrow=6,ncol=6)
M[col(M)==row(M)] <- 1:6
dat <- data.frame(X=1:6, M)
SC <- gvisScatterChart(dat, 
                       options=list(
                         title="Customizing points",
                         legend="right",
                         pointSize=30,
                         series="{
                         0: { pointShape: 'circle' },
                         1: { pointShape: 'triangle' },
                         2: { pointShape: 'square' },
                         3: { pointShape: 'diamond' },
                         4: { pointShape: 'star' },
                         5: { pointShape: 'polygon' }
                         }"))
plot(SC)
# Gauge
Gauge <- gvisGauge(CityPopularity, 
                   options=list(min=0, max=800, greenFrom=500,
                                greenTo=800, yellowFrom=300, yellowTo=500,
                                redFrom=0, redTo=300, width=400, height=300))
plot(Gauge)

# Mapas
Intensity <- gvisIntensityMap(df)
plot(Intensity)

# Geo Chart
Geo=gvisGeoChart(Exports, locationvar="Country", 
                 colorvar="Profit",
                 options=list(projection="kavrayskiy-vii"))
plot(Geo)
# Google Maps
AndrewMap <- gvisMap(Andrew, "LatLong" , "Tip", 
                     options=list(showTip=TRUE, 
                                  showLine=TRUE, 
                                  enableScrollWheel=TRUE,
                                  mapType='terrain', 
                                  useMapTypeControl=TRUE))
plot(AndrewMap)

# Dados em GrÃ¡fico. NÃ�vel de analfabetismo nos EUA
require(datasets)
states <- data.frame(state.name, state.x77)
GeoStates <- gvisGeoChart(states, "state.name", "Illiteracy",
                          options=list(region="US", 
                                       displayMode="regions", 
                                       resolution="provinces",
                                       width=600, height=400))
plot(GeoStates)



# Mais exemplos
demo(googleVis)

