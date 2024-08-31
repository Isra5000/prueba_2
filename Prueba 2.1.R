# Mapa 1 ------------------------------------------------------------------

# comentarios
# cargar paquetes, empezando del que se utilizará menos al que se utilizara más #
library(sf)
library(dplyr)
library(ggplot2)
shape_inegi_jal <- st_read("../ASEJ/ASEJ R Proyect/bases_de_datos/14_jalisco/conjunto_de_datos/14mun.shp")

readxl::read_xlsx("2-21_Coordenadas geográficas de las descargas de agua tratada CEA 2023.xlsx", sheet = 2)
coordendas <- readxl::read_xlsx("2-21_Coordenadas geográficas de las descargas de agua tratada CEA 2023.xlsx",
                                sheet = 2) %>%
  janitor::clean_names() %>%
  rename(operador = encargado_de_la_operacion_a_cea_b_municipio_c_organismo_operador_d_otros)
shape_inegi_jal %>% ggplot() + geom_sf()

Coordenadas_sf <- st_as_sf(coordendas, coords = c("longitud" , "latitud"), agr = "identity", crs = 4326)
Coordenadas_sf %>% ggplot(aes(geometry = geometry)) +
  geom_sf()

ggplot(data = shape_inegi_jal) + 
  geom_sf(color = "gray15", fill = "gray100", size = 0.07) +
  geom_sf(data = Coordenadas_sf,aes(geometry = geometry), size = 0.7, color = "blue")


shape_inegi_jal %>% mutate(prueba = sample(x = c(0, 1), size = 125, replace = TRUE)) %>%
  filter(prueba == 1) %>%
  ggplot() +
  geom_sf()

####Mapa interactivo ptar jal 2023####

install.packages("leaflet")
library(leaflet)

leaflet() %>%
  addTiles() %>%
  setView(lng = -103.6303, lat = 19.98269, zoom = 14)

shape_inegi_2 <- st_transform(shape_inegi_jal, "+init=epsg:4326")

leaflet(shape_inegi_2) %>%
  addPolygons(color="red") %>%
  addTiles() %>%
  addMarkers(data = coordendas %>% select(longitud,latitud) %>% rename(lng=longitud, lat=latitud)) %>%
  setView(lng = -103.6303, lat = 19.98269, zoom = 14)

