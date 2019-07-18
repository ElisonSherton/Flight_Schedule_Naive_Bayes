setwd("C:\\Users\\nayak\\Desktop\\INSOFE\\My_Scripts\\Flight_Schedule_Naive_Bayes")
nbt = read.csv(file = "FlightDelays.csv")
nbts = subset(nbt, select = -c(FL_DATE, FL_NUM, TAIL_NUM))
DEP_TIME_BIN = 0
for(i in 1:2201){
    if(nbts$DEP_TIME[i]<1200){DEP_TIME_BIN[i] = '0000-1199'}
    else if(nbts$DEP_TIME[i] < 1500){DEP_TIME_BIN[i] = "1200 - 1499"}
    else if(nbts$DEP_TIME[i] < 1800){DEP_TIME_BIN[i] = "1500 - 1799"}
}
DEP_TIME_BIN
# We want values which are not NA hence subset accordingly
DEP_TIME_BINN = DEP_TIME_BIN[!is.na(DEP_TIME_BIN)]
DEP_TIME_BINN
