# Script to make a little html map of the expected vs. observed richness

df = terra::rast("~/McGill University/Laura's Lab_Group - BioBlitz/sr.sampcomp.tif")

library(mapview)
mapviewOptions(basemaps = c("OpenStreetMap"),
               na.color = "transparent")

(m = mapview(df, 
             legend = TRUE, 
             basemaps = "OpenStreetMap",  
             layer.name = "Completeness"))

htmlwidgets::saveWidget(m@map, 
                        file = "completeness-map.html", 
                        title = "Plants")
