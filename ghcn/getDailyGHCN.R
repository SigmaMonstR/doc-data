#FUNCTION: GET Daily level summaries by year
getDailyGHCN <- function(year){
  #
  #Desc: 
  #     Downloads GHCN Daily Summary for a specified year
  #Args: 
  #     year: Numeric value of year
  #Out: 
  #     Data frame of GHCN daily summaries by station
  #
  #Get data, assume local directory has been set
  df <- read.csv(paste0(year,".csv"), header = FALSE, stringsAsFactors = FALSE)
  colnames(df) <- c("ID", "YYYYMMDD", "ELEMENT", "VALUE","MFLAG","QFLAG","SFLAG","OBSTIME")
  
  #Print out structure
  print("VARIABLE KEY")
  print("ID = 11 character station identification code")
  print("YEAR/MONTH/DAY = 8 character date in YYYYMMDD format (e.g. 19860529 = May 29, 1986)")
  print("ELEMENT = 4 character indicator of element type ")
  print("DATA VALUE = 5 character data value for ELEMENT ")
  print("M-FLAG = 1 character Measurement Flag ")
  print("Q-FLAG = 1 character Quality Flag ")
  print("S-FLAG = 1 character Source Flag ")
  print("OBS-TIME = 4-character time of observation in hour-minute format (i.e. 0700 =7:00 am)")
  
  return(df)
}