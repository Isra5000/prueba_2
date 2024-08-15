install.packages() # <- Comentarios, y no ejecuta la linea
#Israel rodriguez

#3+5


30+3  #suma
48-30 #resta
45*2  #multiplicación 
12/2  #División
5+(19-9) #parentesis
10*10-(5^2) #potencia


#vectores

vector <- c(5,6,7,8,9)
?matrix #ayuda de funciones 1
help("graphics")

#Instalar paquetes (analogía del foco)
install.packages("readxl")


install.packages("readxl") #ya compramos e instalamos el foco
library(readxl) #prender el foco
read_xlsx("") #leer un archivo xlsx externo

###########################
#crtl+L limpiar consola
#flecha arriba ver instrucciones
############################################
#ayuda de funciones
help("read_xlsx")


help("read_xlsx") #ayuda
?read_xlsx #ayuda
apropos("read_xls") #Nombres aproximados de funciones

#¿Realizar un markdown?
######################
#####Vectores########
#########################
vectorr <- c(5,6,7,8,9)
vectorr2<- c("Luis","Jose","Manuel")
length(vector)
length(vectorr2) #longitud del vector
length(vectorr)
attributes(vectorr)

vectorr[6] #paréntesis cuadrados, posición
vectorr[3:5] #rangos
vectorr[c(1,3:5)]
vectorr[-c(2,4)] #todas las posiciones, menos la dos y la cuatro

##500 estudiantes, y te falta una columna con sus números consecutivos
#1, 2, 3, 4, 5 ...500
nombres<-rep("Juan",5)
length(nombres)
nombres2<-rep(c("Juan","Jose"),each=5)
nombres2<-rep(c(1,3,4),5)

?rep

secuencia<-seq(1,100)
secuencia
secuencia<-seq(1,100,by=1)
secuencia
secuencia<-seq(1,100,by=0.5)
secuencia
secuencia<-seq(1,100,length=10)
secuencia
secuencia<-seq(0,100,length=10)
secuencia
secuencia<-seq(1,100,by=5)
secuencia
secuencia<-seq(1,100,length=20)
secuencia





seq(1, 9, by = pi)
pi
#fechas
#números aleatorios, disribución conocida.

install.packages("lubridate")

#leer fechas en diferentes formatos yyy-dd-mm
#"dd/mm/yy"

seq("desde fecha","hasta fecha",by="dia, mes, año")

fecha_inicio<-as.Date("2023-05-03")
fecha_final<-as.Date("2024-01-27")

#¿Cuántos días han pasado? y generar una secuencia
seq(fecha_inicio,fecha_final,"day")
seq(fecha_inicio,fecha_final,"month")
seq(fecha_inicio,fecha_final,"week")
seq(fecha_inicio,fecha_final,"quarter")
seq(fecha_inicio,fecha_final,"day")

#¿Cuántos días han pasado?
length(seq(fecha_inicio,fecha_final,"days"))

fecha_final-fecha_inicio
#
weekdays(seq(fecha_inicio,fecha_final,"days"))   # te dice que días de la semana son
weekdays(seq(fecha_inicio,fecha_final,"month"))
library("lubridate")


start_date <- ymd("2023,01,08")
end_date <- ymd("2025,01,08")
range <- seq(start_date, end_date, "days")
range

##############
start_date <- ymd("2021,08,04")
end_date <- ymd("2021,08,11")
range <- seq(start_date, end_date, "days")
range

######################
#Aleatorios, distribución conocida.

rnorm() #distribucion normal
rpois() #
rnorm(100,0.1)

#generar un vector de 1 a 200, donde los primeros 100 números sean de una distribución normal (0,1),
# y los siguientes 100 sean de una distribución poisson lambda= 1.3
#un solo vector
#suma. rango y su máximo.

set.seed(1)
vectorrr3<-c(rnorm(100,0,1),rpois(100,1.3))
sum(vectorrr3)
range(vectorrr3)[2]-range(vectorrr3)[1]

set.seed(3)
vectorrr3<-c(rnorm(100,0,1),rpois(100,1.3))
sum(vectorrr3)
range(vectorrr3)[2]-range(vectorrr3)[1]

set.seed(5)
vectorrr3<-c(rnorm(100,0,1),rpois(100,1.3))
sum(vectorrr3)
range(vectorrr3)[2]-range(vectorrr3)[1]

set.seed(1)
vectorrr3<-c(rnorm(100,0,1),rpois(100,1.3))
sum(vectorrr3)
range(vectorrr3)[2]-range(vectorrr3)[1]

#### función c() concatenar
###### función seq() secuencia

######
matrix(c(1,2,3,4,5,6,7,8,9),ncol=3,byrow=TRUE) #3x3
matrix(c(1,2,3,4,5,6,7,8,9),ncol=3,byrow=FALSE)
MATRI <- matrix(c(1,2,3,4,5,6,7,8,9),ncol=3,byrow=TRUE)
MATRI[1,2]
MATRI[2,3]
MATRI[3,3]
MATRI[1,]
MATRI[,1]
MATRI[3,c(1,3)]
MATRI[1:2,c(1,3)]
MATRI[,-1]
MATRI[,-c(1,2)]

###############
###Ejercicio para elaborar matrices tercera clase de R

###data.frame marco de datos
data.frame(MATRI) #### se puede utilizar esta formula
matrizz<-as.data.frame(MATRI)
matrizz$V1    #### transpuesta
matrizz["V1"]
matrizz$V2
matrizz[1,]
matrizz["1",]  
#### e arroja el nombre de la fila
matrizz["2",] 
####### arroja el nombr de la fila  
matrizz[2,]


MATRI
set.seed(123)
matri2<-matrix(rnorm(9,0,1),ncol=3,byrow=TRUE)

# - menos
MATRI - matri2
MATRI+matri2
MATRI/matri2
MATRI*matri2 # multiplicación de elementos de la matris
MATRI%*%matri2 # esta es la multiplicación de matrices 3x3 y se multiplica 3x3

matri3<-MATRI[-1,] # ELIMINAR FILA
matri3%*%MATRI  #2X3   3X3
matri3<-MATRI[,-1] # ELIMINAR COLUMNA
matri3%*%MATRIMA #3x2 3x3 no son elementos compatibles
matri3
matri3%*%MATRI

inv_matri2<-solve(matri2) #¿cómo extraer la inversa de la matriz? matri2
#También sirve para extraer raices de ecuaciones 
matri2%*%inv_matri2 #matriz identidad

matriz_coef<-matrix(c(2,5,6,1,9,2,4,1,5),ncol=3,byrow=TRUE)
matriz_yes<-matrix(c(3,-2,1),ncol=1) #o de respuesta

solve(matriz_coef,matriz_yes)

#2x-5y-6z=3
#x-9y-2z=-2
#4x-y-5z=1
#Respuesta es: x=-1.128, y=-0.357, z=1.174


t(matriz_coef) #tranxpuesta
diag(matriz_coef) # diagonal
dim(matrizz) #dimensión de la matriz

#general un marco de datos manualmente y manipularlo
colnames(matrizz) #colnames nombre de columnas, #rownames
rownames(matrizz)
colnames(matrizz)<-c("vari1","vari2","vari3")
rownames(matrizz)<-c("uno","dos","tres")

informacion<-data.frame(Edad=c(20,15,11),
                        Estatura=c(160,150,120),
                        Peso=c(45,55,25),row.names=c("uno","dos","tres"))

informacion$Peso
informacion["Peso"]
informacion["uno",]
informacion[1,]

coneval["pobre_per_2010"] #nombrar que te traiga la columna desde el archivo de excel

agraficar<-rnorm(100,0,1) #100 datos, media 0 y desviación standar o varianza 1
plot() #crear gráficos
?base::plot
# base:: indica que es la función plot del paquete base
?graphics::plot

plot(agraficar,type="s",col="blue",main="Primer Gráfica",
     xlab="Tiempo",ylab="y(t)",col.axis="red",las="0",lwd="2")


#funciones para el análisis descriptivo (estádistica)
mean(agraficar) #media
median(agraficar) #mediana
range(agraficar) #max y min
max(agraficar) #max
min(agraficar) #min

#marco de datos
mean(informacion$Edad)

mediass<-colMeans(informacion)
rowMeans(informacion)
length(mediass)
apply(informacion,2,mean)  #1 filas 2 columnas
apply(informacion,1,mean)


apply(informacion,2,sd)
apply(informacion,1,sd)
apply(informacion,2,var)
apply(informacion,1,var)
apply(informacion,2,min)
apply(informacion,2,max)

#¿Qué funciones puedo aplicar a la matriz?

indicador<-function(x){mean(x)/sd(x)}
indicador(informacion$Edad)
mean(informacion$Edad)/sd(informacion$Edad)
indicador(informacion$Estatura)
mean(informacion$Estatura)/sd(informacion$Estatura)

#mean(informacion$Estatura)
#mean(informacion$Peso)

apply(informacion,2,indicador)
mean(informacion$Estatura)/sd(informacion$Estatura)
rangox<-function(x){max(x)-min(x)}

range(informacion$Estatura)
apply(informacion,2,rangox)
range(informacion$Edad)
apply(informacion,2,rangox)
range(informacion$Peso)
apply(informacion,2,rangox)
apply(informacion,2,range)

apply(informacion,2,summary) #aplica toda la información de los elementos de la matriz
summary(informacion$Peso) #toda la información
summary(informacion$Edad) #toda la información
summary(informacion$Estatura) #toda la información


#marco de datos con distintos tipos de variables y comparar con matrix
matrizz #marco de datos
matrizz$vari1
MATRI[1,1] #matriz

auxiliar<-c("Hombe","Hombre","Mujer")
ejercicio5<-data.frame(Edad=c(15,16,17,19),sexo=c("Mujer","Hombre","Mujer","Mujer"))

ejercicio5$Edad
ejercicio5$sexo

sum(ejercicio5$Edad)
table(ejercicio5$sexo) # Tabulado = frecuencias variables categoricas u ordinales

cbind(MATRI,c(0,3,8)) #pegar o unir columnas en una matriz
rbind(MATRI,c(0,3,8)) #pegar o unir filas

ejercicio6<-cbind(MATRI,c("Hombre","Mujer","Hombre"))  #Un tipo de valor solo se puede tener, o todos son valores o categoricos
sum(ejercicio6[,1])
sum(MATRI[,1])
#cbind #rbind #agregar columnas y filas a un marco de datos

which() #
> #
< #
<= #
=> #
ifelse # funcione que se pueden utilizar

which(ejercicio5$Edad>=17) #igual que ==
which(ejercicio5$sexo=="Mujer")

vector_posi<-which(ejercicio5$Edad>=17) #te regresa las posiciones que le das la condición
vector_posi2<-which(ejercicio5$sexo=="Mujer") #te regresa las posiciones que le das la condición

ejercicio5[vector_posi,]
ejercicio5[vector_posi2,]
#cve_enti=="02"

#n.d. tomarlo como un NA en R para que pueda hacer una sumatoria de los datos numericos

ejercicio55<-rbind(ejercicio5,c("NA","Mujer"))
sum(ejercicio5$Edad)
sum(ejercicio55$Edad)
sum(as.numeric(ejercicio55$Edad),na.rm=TRUE)
mean(as.numeric(ejercicio55$Edad),na.rm=TRUE)

install.packages("readxl")
library(readxl)
pobrezax<-read_xlsx("C:\\Users\\israr\\Documents\\Diplomado VEL\\Clase2\\Ejercicio guiado Pobreza-CONEVAL-20240127\\pobreza_2010_2015_2020.xlsx",na=c("n.d.","n.a.",sheet="Hoja1")
pobrezax

#cual era la población total de méxico en 2015?
#Cual era el municipio con mayor cantidad de población en condición de pobreza en 2010, 2015 y 2020? leon 300,000 en 2010, 315,000 en 2015
# En proporción, ¿Cual es el municipio y estado de la republica con mayor cantidad de personas en condición de pobreza #alguno de Durango 80%

sum(pobrezax$pob_2015)
sum(pobrezax$pob_2015,na.rm = TRUE) #sumatoria de población total #121 millones de habitantes

#Cual era el municipio con mayor cantidad de población en condición de pobreza en 2010, 2015 y 2020?
#2010
posi_pob_2010<-which(pobrezax$pobre_per_2010==max(pobrezax$pobre_per_2010,na.rm=TRUE)) #posición del municipio con mayor número de personas en pobreza
pobrezax[posi_pob_2010,1:4] #para arrojar el nombre del municipio con mayor pobreza
pobrezax[posi_pob_2010,]

#2015
posi_pob_2015<-which(pobrezax$pobre_per_2015==max(pobrezax$pobre_per_2015,na.rm=TRUE))
which(pobrezax$pobre_per_2015==max(pobrezax$pobre_per_2015,na.rm=TRUE)) #te da la fila o ubicación del dato
pobrezax[posi_pob_2015,1:4] #nombre del municipio, columna 4
pobrezax[posi_pob_2015,] #información del municipio en general

#2020
posi_pob_2020<-which(pobrezax$pobre_per_2020==max(pobrezax$pobre_per_2020,na.rm=TRUE))
which(pobrezax$pobre_per_2020==max(pobrezax$pobre_per_2020,na.rm=TRUE))
pobrezax[posi_pob_2020,1:4]
pobrezax[posi_pob_2020,]

#colnames(pobrezax) muestra todas las columnas
#pobreza[,4] muestra todos los municipios

#para mostrar solo entidad y municipio 2010, 2015 y 2020
pobrezax[posi_pob_2010,c(2,4)]
pobrezax[posi_pob_2015,c(2,4)]
pobrezax[posi_pob_2020,c(2,4)]

# En proporción, ¿Cual es el municipio y estado de la republica con mayor cantidad de personas en condición de pobreza  #alguno de Durango 80%
#edo. con mayor proporción de pobreza
#ejercicio en clase 10 minutos)

#2010
posi_pob_2010<-which(pobrezax$pobre_porc_2010==max(pobrezax$pobre_porc_2010,na.rm=TRUE))
pobrezax[posi_pob_2010,4]
pobrezax[posi_pob_2010,c(2,4,8)] #2=entidad,4=mun,8=proporción de pobreza 2010

#2015
posi_pob_2015<-which(pobrezax$pobre_porc_2015==max(pobrezax$pobre_porc_2015,na.rm=TRUE))
pobrezax[posi_pob_2015,4]
pobrezax[posi_pob_2015,c(2,4,9)] #2=entidad,4=mun,9=proporción de 2015

#2020
posi_pob_2020<-which(pobrezax$pobre_porc_2020==max(pobrezax$pobre_porc_2020,na.rm=TRUE))
pobrezax[posi_pob_2020,4]
pobrezax[posi_pob_2020,c(2,4,10)] #2=entidad,4=mun,10=proporción de 2020

#estado con mayor población en situación de pobreza en proporción
posi_pob_20102<-which(pobrezax$pobre_porc_2010==max(pobrezax$pobre_porc_2010,na.rm=TRUE))
pobrezax[posi_pob_20102,2]
pobrezax[posi_pob_20102,c(2,8)]  #información a nivel municipal

mul<-((pobrezax$pobre_per_2010/pobrezax$pob_2010)*100)
which(mul==max(mul,na.rm=TRUE))

sum(pobrezax$pob_2010,na.rm = TRUE)
sum(pobrezax$pobre_per_2010,na.rm = TRUE)
sum(pobrezax$pobre_per_2010,na.rm = TRUE)/sum(pobrezax$pob_2010,na.rm = TRUE)

#agregaciones o conjuntar función agregaciones
#aggregate
#merge unión de tablas

aggregate() #aplicame una función (suma) sobre una columna, por cada  estado (columna)
?aggregate
aggregate(pobrezax$pob_2010,by=as.factor(pobrezax$ent_fed),data=pobrezax,FUN=sum,na.rm=TRUE)
entidad<-as.factor(pobrezax$ent_fed)
aggregate(pobrezax$pob_2010,by=as.factor(pobrezax$ent_fed),data=pobrezax,FUN=sum,na.rm=TRUE)
as.factor(pobrezax$ent_fed)

entidad<-as.factor(pobrezax$ent_fed)
entidad
as.factor(pobrezax$pobre_porc_2010)

pobrezax[,1:2]


######### #estado con mayor población en situación de pobreza en proporción
pob_tot_ent<-aggregate(x=pobrezax$pob_2010, by= list(pobrezax$cve_enti),FUN=sum,na.rm=TRUE) #aplicame una función (suma) sobre una columna, por cada estado (columna)
pobre_per_ent<-aggregate(x=pobrezax$pobre_per_2010, by= list(pobrezax$cve_enti),FUN=sum,na.rm=TRUE)
pobre_per_ent<-aggregate(x=pobrezax$pobre_per_2010, by= list(pobrezax$cve_enti,pobrezax$ent_fed),FUN=sum,na.rm=TRUE)

tabla_ent<-merge(pobre_per_ent,pob_tot_ent,by="Group.1")
colnames (tabla_ent)<-c("cve_ent","nom_ent","pobre_per_2010","pob_tot_2010")
porc_pobre_ent<-(tabla_ent$pobre_per_2010/tabla_ent$pob_tot_2010)*100
tabla_ent<-cbind(tabla_ent,porc_pobre_ent)

max(tabla_ent$porc_pobre_ent) #TE AMA VICTORIA
which(tabla_ent$porc_pobre_ent==max(tabla_ent$porc_pobre_ent,TRUE))
tabla_ent

posi_ent_2010<-which(tabla_ent$porc_pobre_ent==max(tabla_ent$porc_pobre_ent,TRUE))
tabla_ent[posi_ent_2010,c(2,5)]
tabla_ent[posi_ent_2010,c(1:5)
          
####### CLASE 7 DE FEBRERO########
######## Resumen de tablas y unión de tablas (ejercicio de pobreza)
#Resumir el porcentaje de personas en pobreza 2010-2020 por estado
#Orderna de mayor a menor los estados.
#Primer forma, utilizando "by", y más extensa... merge
pobres_est_2010<-aggregate(x=pobrezax$pobre_per_2010,by=list(pobrezax$ent_fed),FUN=sum,na.rm=TRUE) #sumatoria de pob en pobre por estado
tot_est_2010<-aggregate(x=pobrezax$pob_2010,by=list(pobrezax$ent_fed),FUN=sum,na.rm = TRUE)  #sumatoria de pob total por estado
estado_resumen<-merge(x=tot_est_2010,y=pobres_est_2010,by.x="Group.1",by.y="Group.1") #unión de las dos tablas por columna
colnames(estado_resumen)<-c("Estado","Pob_total","Total_pobres")

#¿Cómo agregar la columna de pobres/total ? #proporción de la población 
pro_pobres<-estado_resumen$Total_pobres/estado_resumen$Pob_total #División de columnas
estado_resumen2<-cbind(estado_resumen,pro_pobres) #Método 1 #agregar columna adicional a la tabla
estado_resumen2[which(estado_resumen2$pro_pobres==max(estado_resumen2$pro_pobres)),] # arrojar cual es el mayor en estado en pobreza con la información obtenida

estado_resumen2[order(estado_resumen2$pro_pobres),] #Menor a mayor por propoción de pobreza
estado_resumen2[order(estado_resumen2$pro_pobres,decreasing = TRUE),] #Mayor a menor por proporción de pobreza
estado_resumen2$logico_mayoria<-ifelse(estado_resumen2$pro_pobres>=0.50,"RED","BLUE") #Método 2 Identificador más de .50 proporción pobreza
estado_resumen2$logico_mayoria<-estado_resumen2$pro_pobres>=0.50 #es para que los datos te arroge la información con condición

## Método para resumir la información a nivel estatal utilizando aggregate, by #mediante que
aggregate(cbind(pobrezax$pob_2010,pobrezax$pobre_per_2010)~pobrezax$ent_fed, FUN=sum) ##~ Y explicandoce mediante x sgnificado del signo

pobres_total_estado<-aggregate(cbind(pobrezax$pob_2010,pobrezax$pobre_per_2010,
                                     pobrezax$pob_2015,pobrezax$pobre_per_2015,
                                     pobrezax$pob_2020,pobrezax$pobre_per_2020)~pobrezax$ent_fed,FUN=sum)
colnames(pobres_total_estado)<-c("Estado","poblacion_2010","pob_pobreza_2010","poblacion_2015","pob_pobreza_2015",
                                 "poblacion_2020","pob_pobreza_2020")
pobres_total_estado$prop_pob_2010<-pobres_total_estado$pob_pobreza_2010/pobres_total_estado$poblacion_2010
pobres_total_estado$prop_pob_2015<-pobres_total_estado$pob_pobreza_2015/pobres_total_estado$poblacion_2015
pobres_total_estado$prop_pob_2020<-pobres_total_estado$pob_pobreza_2020/pobres_total_estado$poblacion_2020
#Sin la función merge

#hacer merge de archivo espacial con archivo no espacial 


#aggregate
#merge
#leer un archivo espacial sp
empatess<-
  aggregate(cbind(pobrezax$pobre_per_2010,pobrezax$pob_2010),list(pobrezax$ent_fed),FUN=sum,na.rm=
              TRUE) #Aplicame una función (suma) sobre una columna, por cada estado (columna)
colnames(empatess)<-c("Estado","Pobres","Pob_total")
empatess$prop_pobres<-empatess$Pobres/empatess$Pob_total
empatess[order(empatess$prop_pobres,decreasing = TRUE),]
#merge
##sort

#archivos espaciales
#Los municipios 8archivo disponible en moodle del curso)

install.packages("sp")
install.packages("sf")
library(sp)
library(sf)
#lectura de un archivo shape file
read_sf("C:\\Users\\israr\\Documents\\Diplomado VEL\\Clase2\\00mun2","00mun2") #genera una nueva columna en el marco de datos que se llama geometry (atributo especial)
municipio<-read_sf(dsn="C:\\Users\\israr\\Documents\\Diplomado VEL\\Clase2\\00mun2",layer="00mun2") # se genera un marco de datos
seraa<-read_sf(dsn="C:\\Users\\israr\\Documents\\Diplomado VEL\\Clase2\\mg_2020_integrado\\conjunto_de_datos",layer="00ent")
head(seraa)
plot(seraa)

st_geometry(municipio) #función que extraer la geometria de los municipios
plot(st_geometry(municipio))
plot(st_geometry(seraa),col=)

pobres_total_estado
# seraa pegarle una nueva columna donde diga el porcentaje de pob en pobreza
#merge #colorear (col= respecto a la nueva variable que se agregará en la tabla)
#NOMGEO y columna Estado
#hacer merge de archivo espacial con archivo no espacial #siguiente clase

#seraa2 corresponde al archivo con agebs


###clase 12 de febrero
#primer tarea: Mapa de un estado de la republica con más de 100 municipios
#y visualiza el porcentaje de pobres (en general), del año 2020. Colorear según min,q1,q2 (mediana),q3,max (cuatro colores)

library(sp)
library(sf)

pobrezax #BD no espacial
municipio #BD espacial
dim(municipio) #dimensión de la tabla
head(municipio) #encabezados
head(pobrezax[,1:6]) #encabezados

pobrezax$pobre_porc_2015
cve_mun #llave
colnames(pobrezax) #ver columnas
pobrezax[,c(3,8,9,10)] #saber lo que quiero exportar

municipio$CVEGEO

union_mapa<-sp::merge(x=municipio, y=pobrezax[,c(3,8,9,10)],by.x="CVEGEO",by.y="cve_mun",all.x=TRUE)  #all.x cuidado de los datos en el emparejamiento
plot(union_mapa["pobre_porc_2010"],main="primer mapa")
plot(union_mapa["pobre_porc_2015"],main="Segundo mapa")
plot(union_mapa["pobre_porc_2020"],main="Tercer mapa")

##ggplot2 #
#shade, transparence, alpha= 
##lines(seraa) #### gráficos más complejos

estadox<-union_mapa[which(union_mapa$CVE_ENT==13),]
plot(estadox["pobre_porc_2020"],main="Hidalgo pobreza 2020")

estadox<-union_mapa[which(union_mapa$CVE_ENT==14),]
plot(estadox["pobre_porc_2020"],main="Jalisco pobreza 2020")


library(RColorBrewer)
mycolours <- brewer.pal(6, "Blues")
mybreaks <- c(0, 20, 40, 50, 60, 80, 100) #Y si estos cortes son los cuantiles
cut(union_mapa$pobre_porc_2010, mybreaks)
mycolourscheme <- mycolours[findInterval(union_mapa$pobre_porc_2010, vec = mybreaks)]
plot(st_geometry(union_mapa), col = mycolourscheme, main = "¿?", cex = 5)

mycolours <- brewer.pal(4, "Reds")
mybreaks <- c(0, 53.00, 69.10, 83.42, 100) #Y si estos cortes son los cuantiles
cut(union_mapa$pobre_porc_2010, mybreaks)
mycolourscheme <- mycolours[findInterval(union_mapa$pobre_porc_2010, vec = mybreaks)]
plot(st_geometry(union_mapa), col = mycolourscheme, main = "¿?", cex = 5)

mycolours <- brewer.pal(5, "Reds")
mybreaks <- c(0, 20, 40, 50, 60, 80, 100) #Y si estos cortes son los cuantiles
table(cut(union_mapa$pobre_porc_2010, mybreaks)) #indica cuantos colores se encuentran en cada categorías
mycolourscheme <- mycolours[findInterval(union_mapa$pobre_porc_2010, vec = mybreaks)]
plot(st_geometry(union_mapa), col = mycolourscheme, main = "¿?", cex = 5)

plot(st_geometry(union_mapa), col = mycolourscheme, main = "Mapa pobreza 2010", cex = 1)
legend("bottomleft", legend = levels(cut(union_mapa$pobre_porc_2010, mybreaks)), fill =mycolourscheme, cex = 0.8, title = "")

library(sp) #se necesitan las dos librerias sp y sf
sppplot(obj=union_mapa,zcol=c("pobre_porc_2010","pobre_porc_2015","pobre_porc_2020")) # gráficar mas de una variable de forma simultanea solo funciona con la libreria sf

library(sf)
union_mapa2<-as_Spatial(union_mapa)
spplot(obj=union_mapa2,zcol=c("pobre_porc_2010","pobre_porc_2015","pobre_porc_2020"))


#retomando la clase segunda parte
#filtrar la informacion con la función which

?base::plot


?merge #ayuda de funciones, cuando hay dos tipos de funciones

