# library(threadr)
pipeline <- function(){
  pacotes()
  urls=c('ftp://ftp.datasus.gov.br/dissemin/publicos/SIASUS/200801_/Dados/',
       'ftp://ftp.datasus.gov.br/dissemin/publicos/CNES/200508_/Dados/DC/',
       'ftp://ftp.datasus.gov.br/dissemin/publicos/CNES/200508_/Dados/EE/',
       'ftp://ftp.datasus.gov.br/dissemin/publicos/CNES/200508_/Dados/EF/',
       'ftp://ftp.datasus.gov.br/dissemin/publicos/CNES/200508_/Dados/EP/',
       'ftp://ftp.datasus.gov.br/dissemin/publicos/CNES/200508_/Dados/EQ/',
       'ftp://ftp.datasus.gov.br/dissemin/publicos/CNES/200508_/Dados/GM/',
       'ftp://ftp.datasus.gov.br/dissemin/publicos/CNES/200508_/Dados/HB/',
       'ftp://ftp.datasus.gov.br/dissemin/publicos/CNES/200508_/Dados/IN/',
       'ftp://ftp.datasus.gov.br/dissemin/publicos/CNES/200508_/Dados/LT/',
       'ftp://ftp.datasus.gov.br/dissemin/publicos/CNES/200508_/Dados/PF/',
       'ftp://ftp.datasus.gov.br/dissemin/publicos/CNES/200508_/Dados/RC/',
       'ftp://ftp.datasus.gov.br/dissemin/publicos/CNES/200508_/Dados/SR/',
       'ftp://ftp.datasus.gov.br/dissemin/publicos/CNES/200508_/Dados/ST/',
       'ftp://ftp.datasus.gov.br/dissemin/publicos/SIHSUS/200801_/Dados/')


############# COLETA AUTOMÁTICA E CONVERSÂO PARA CSV #############
# setwd('C:\\Users\\User\\Documents\\dados\\Raw')

  for(url in urls){
    dat <- readLines(url)
    dat <- subset(dat, grepl('DF', dat, fixed = T))
    # dat<- subset(dat,grepl(format(Sys.Date(),'%m-%d-%y'), dat, fixed = T))
    for(i in 1:length(dat)){
      if(!identical(dat, character(0))){
        diretorio <- caminho(url,dat[i])
        setwd(paste0('C:/Users/User/Documents/dados/Raw/DBC/',diretorio))
        download.file(paste0(url,strsplit(dat[i], split = ' ')[[1]][length(strsplit(dat[i], split = ' ')[[1]])]), destfile =strsplit(dat[i], split = ' ')[[1]][length(strsplit(dat[i], split = ' ')[[1]])],method = 'curl')
        a <- read.dbc(strsplit(dat[i], split = ' ')[[1]][length(strsplit(dat[i], split = ' ')[[1]])])
        setwd(paste0('C:/Users/User/Documents/dados/Raw/CSV/',diretorio))
        write.csv(a, paste0(strsplit(strsplit(dat[i], split = ' ')[[1]][length(strsplit(dat[i], split = ' ')[[1]])], split = '.dbc')[[1]],'.csv'))
      }
    }
  }
}

