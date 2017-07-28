#FUNCTIONS: Spatial join of station --> County
stationCounty <- function(county_url, shp_name, station, lon, lat){
  #
  #Desc: 
  #     Finds the county for each point (spatial join)
  #Args: 
  #     county_url: string containing URL to shapefile
  #     shp_name: string containing name of shapefile 
  #     station: point dataframe with latitude and longitude
  #     lon/lat: string containing lat/lon field name
  #Out: 
  #     Data frame of points with polygon's data
  #  
  
  #Download and load shapefile (polygon)
  shp <- shapeDirect(url= county_url,
                      shp= shp_name)
  
  #Turn point file into shapefile
  coordinates(station)=c(lon, lat)
  
  #Set projections
  proj4string(station)=CRS("+proj=longlat +ellps=WGS84 +datum=WGS84")
  shp <- spTransform(shp, CRS("+proj=longlat +ellps=WGS84 +datum=WGS84") )
  
  #Run spatial join
  a <- over(station,shp)
  
  #Join polygon data onto points data
  station <- cbind(station@data, a)
  station <- station[!is.na(station[,1]),]
  
  #return points data with polygon's data
  return((station))
}