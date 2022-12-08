#' função para coletar os dados do datasus automaticamente
#' @example
#' pipeline(pasta, periodo)

pipeline <- function(pasta = paste0(getwd(),'/'),periodo = 0, tratamento = T){
  pacotes()
  urls=c(
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
      #  'ftp://ftp.datasus.gov.br/dissemin/publicos/SIASUS/200801_/Dados/',
       'ftp://ftp.datasus.gov.br/dissemin/publicos/SIHSUS/200801_/Dados/')

  setwd(pasta)
############# COLETA AUTOMÁTICA E CONVERSÂO PARA CSV #############
# setwd('C:\\Users\\User\\Documents\\dados\\Raw')
  dir.create(paste0(pasta,'DataSUS'))
  dir.create(paste0(pasta,'DataSUS/RAW'))
  dir.create(paste0(pasta,'DataSUS/CURATED'))
  dir.create(paste0(pasta,'DataSUS/RAW/DBC'))
  dir.create(paste0(pasta,'DataSUS/RAW/CSV'))
  dir.create(paste0(pasta,'DataSUS/RAW/DBC/CNES'))
  # dir.create(paste0(pasta,'DataSUS/RAW/DBC/SIA'))
  dir.create(paste0(pasta,'DataSUS/RAW/DBC/SIH'))
  dir.create(paste0(pasta,'DataSUS/RAW/CSV/CNES'))
  # dir.create(paste0(pasta,'DataSUS/RAW/CSV/SIA'))
  dir.create(paste0(pasta,'DataSUS/RAW/CSV/SIH'))
  dir.create(paste0(pasta,'DataSUS/CURATED/SIH'))
  # dir.create(paste0(pasta,'DataSUS/CURATED/SIA'))
  dir.create(paste0(pasta,'DataSUS/CURATED/CNES'))
  for(url in urls){
    dat <- readLines(url)
    dat <- subset(dat, grepl('DF', dat, fixed = T))
    if(periodo != 0){
      dat<- subset(dat,grepl(format(Sys.Date(),periodo), dat, fixed = T))}
    for(i in 1:length(dat)){
      if(!identical(dat, character(0))){
        diretorio <- caminho(url,dat[i])
        if(!file.exists(paste0(pasta,'DataSUS/RAW/DBC/',diretorio))){
           dir.create(paste0(pasta,'DataSUS/RAW/DBC/',diretorio))
        }

        setwd(paste0(pasta,'DataSUS/RAW/DBC/',diretorio))
        download.file(paste0(url,strsplit(dat[i], split = ' ')[[1]][length(strsplit(dat[i], split = ' ')[[1]])]), destfile =strsplit(dat[i], split = ' ')[[1]][length(strsplit(dat[i], split = ' ')[[1]])],method = 'curl')
        dados_brutos <- tryCatch((read.dbc(strsplit(dat[i], split = ' ')[[1]][length(strsplit(dat[i], split = ' ')[[1]])]))
        if(!file.exists(paste0(pasta,'DataSUS/RAW/CSV/',diretorio))){
          dir.create(paste0(pasta,'DataSUS/RAW/CSV/',diretorio))
        }

        setwd(paste0(pasta,'DataSUS/RAW/CSV/',diretorio))
        write.csv(dados_brutos, paste0(strsplit(strsplit(dat[i], split = ' ')[[1]][length(strsplit(dat[i], split = ' ')[[1]])], split = '.dbc')[[1]],'.csv'))

        if(tratamento == T){
          if(!file.exists(paste0(pasta,'DataSUS/CURATED/',diretorio))){
            dir.create(paste0(pasta,'DataSUS/CURATED/',diretorio))
          }
          dados_limpos <- limpeza(dados_brutos, diretorio = diretorio)
          setwd(paste0(pasta,'DataSUS/CURATED/',diretorio))
          write.csv(dados_limpos, paste0(strsplit(strsplit(dat[i], split = ' ')[[1]][length(strsplit(dat[i], split = ' ')[[1]])], split = '.dbc')[[1]],'.csv'))


        }
      }
      else {print(paste0('Não tem dados novos na base'))}
    }
  }
}

