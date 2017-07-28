##FUNCTIONS: Get Shapefile from URL
shapeDirect <- function(url, shp) {
  #
  #Desc: 
  #     Given a URL with a zipped shapefile, download and load file
  #Args: 
  #     url: string containing URL to shapefile
  #     shp: string containing name of shapefile 
  #Out: 
  #     Shapefile
  #
  require(rgdal)
  temp = tempfile()
  download.file(url, temp) ##download the URL taret to the temp file
  unzip(temp,exdir=getwd()) ##unzip that file
  return(readOGR(paste(shp,".shp",sep=""),shp))
}