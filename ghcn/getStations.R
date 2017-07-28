#FUNCTION: Get GHCN Stations
getStations <- function(){
  #
  #Desc: Obtain list of weather stations in the GHCN data
  #Args: None. Function pulls direct from NOAA FTP
  #Out: Data frame of stations 
  #
  stations <- read.fwf(file=url("https://www1.ncdc.noaa.gov/pub/data/ghcn/daily/ghcnd-stations.txt"),
                       skip=0, header = FALSE, as.is = TRUE,comment.char="",
                       widths=c(11, 10, 10, 7, 3, 30, 3, 3, 5))
  colnames(stations) <- c("ID", "LATITUDE", "LONGITUDE", "ELEVATION",
                          "STATE","NAME","GSN.FLAG", "HCN.CRN.FLAG","WMO.ID")
  return(stations)
}