#FUNCTION: Look up weather elements 
findElement <- function(element){
  #  
  #Desc: 
  #     Lookup definition of weather variable
  #Args: 
  #     element: stringvector of weather variable requiring explanation
  #     
  #Out: 
  #     Text print out
  
  #Load look up table
  master <- data.frame(code = c("PRCP","SNOW","SNWD","TMAX","TMIN","ACMC","ACMH","ACSC","ACSH","AWDR","AWND","DAEV","DAPR","DASF","DATN","DATX","DAWM","DWPR","EVAP","FMTM","FRGB","FRGT","FRTH","GAHT","MDEV","MDPR","MDSF","MDTN","MDTX","MDWM","MNPN","MXPN","PGTM","PSUN"),
                       descrip = c("Precipitation (tenths of mm)", "Snowfall (mm)", "Snow depth (mm)", "Maximum temperature (tenths of degrees C)", "Minimum temperature (tenths of degrees C)", "Average cloudiness midnight to midnight from 30-second ceilometer data (percent)", "Average cloudiness midnight to midnight from manual observations (percent)", "Average cloudiness sunrise to sunset from 30-second ceilometer data (percent)", "Average cloudiness sunrise to sunset from manual observations (percent)", "Average daily wind direction (degrees)", "Average daily wind speed (tenths of meters per second)", "Number of days included in the multiday evaporation total (MDEV)", "Number of days included in the multiday precipitation\xca total (MDPR)", "Number of days included in the multiday snowfall total (MDSF)\t\t \xca", "Number of days included in the multiday minimum temperature (MDTN)", "Number of days included in the multiday maximum temperature (MDTX)", "Number of days included in the multiday wind movement (MDWM)", "Number of days with non-zero precipitation included in multiday precipitation total (MDPR)", "Evaporation of water from evaporation pan (tenths of mm)", "Time of fastest mile or fastest 1-minute wind (hours and minutes, i.e., HHMM)", "Base of frozen ground layer (cm)", "Top of frozen ground layer (cm)", "Thickness of frozen ground layer (cm)", "Difference between river and gauge height (cm)", "Multiday evaporation total (tenths of mm; use with DAEV)", "Multiday precipitation total (tenths of mm; use with DAPR and DWPR, if available)", "Multiday snowfall total\xca", "Multiday minimum temperature (tenths of degrees C; use with DATN)", "Multiday maximum temperature (tenths of degress C; use with\xca DATX)", "Multiday wind movement (km)", "Daily minimum temperature of water in an evaporation (tenths of degrees C)", "Daily maximum temperature of water in an evaporation pan (tenths of degrees C)", "Peak gust time (hours and minutes, i.e., HHMM)", "Daily percent of possible sunshine (percent)"))
  master[,1] <- as.character(master[,1])
  master[,2] <- as.character(master[,2])
  
  #Return results
  print(paste("You search for: ", element))
  print(paste("Description: ",master[master[,1] %in% element,2]))
}
