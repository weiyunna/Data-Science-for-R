#library(RODBC)
#myconn <-odbcConnect(dsn = "14.0.1000.169",
                     #uid="100064135", pwd="Polqw12345") 

library(RODBC) # don't forget to install it beforehand

#my_server="AZAPEACNCDB81"
my_server="CNCTUG0MLSQLV1A"
#my_db="WebAPI"
my_db="Alaska_Trace"
my_username="datascientistuser"
my_pwd="Jabil1234"


db <- odbcDriverConnect(paste0("DRIVER={SQL Server};
                                 server=",my_server,";
                               database=",my_db,";
                               uid=",my_username,";
                               pwd=",my_pwd))


sql="SELECT Top 10 [sn] FROM dbo.WP_History" #dbo is the schema here
df <- sqlQuery(db,sql)
df

dbhandle <- odbcDriverConnect('driver={SQL Server};server="AZAPEACNCDB81";database="WebAPI";trusted_connection=true')