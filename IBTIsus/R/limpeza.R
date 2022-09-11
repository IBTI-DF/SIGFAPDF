limpeza <- function(dados, diretorio){

### Tabelas do CNES ###

  if(grepl('CNES', diretorio, fixed = T)){
    if(grepl('DC', diretorio, fixed = T)){
      dados$CNES <- as.character(dados$CNES)
      names(dados)[1] <- 'FK_COD_CNES'

      dados$DISTRSAN <- as.character(dados$DISTRSAN)
      dados$DISTRSAN[is.na(dados$DISTRSAN)] <- '0000'
      dados$DISTRSAN <- as.factor(dados$DISTRSAN)

      dados$CLIENTEL <- as.character(dados$CLIENTEL)
      dados$CLIENTEL[is.na(dados$CLIENTEL)] <- '0000'
      dados$CLIENTEL <- as.factor(dados$CLIENTEL)

      dados$COMPETEN <- as.character(dados$COMPETEN)
      dados$COMPETEN <- as.Date(paste(dados$COMPETEN, '01',sep = ''), format = '%Y%m%d')

      dados<-subset(dados, select = -c(COD_IR, REGSAUDE, MICR_REG, DISTRSAN, DISTRADM, ESFERA_A,
                                      RETENCAO, NATUREZA, NIV_HIER, CNS_NEFR, CNS_ADM, CNS_OPED,
                                      CNS_CONC, CNS_OCLIN, CNS_MRAD, CNS_FNUC, CNS_HMTR, CNS_HMTL,
                                      CNS_CRES, CNS_RTEC, CODUFMUN, PF_PJ, COD_IR, MICR_REG, DISTRADM, 
                                      TPGESTAO, ESFERA_A, RETENCAO, NATUREZA, NIV_HIER, TP_PREST, 
                                      S_ALSEME, ORTV1050, ORV50150, OV150500, UN_COBAL, EQBRBAIX, 
                                      EQBRMEDI, AP01CV03, AP01CV04, AP01CV07, AP02CV03, AP02CV04,
                                      AP02CV07, AP03CV03, AP03CV04, AP03CV07, AP04CV03, AP04CV04, 
                                      AP04CV07, AP05CV02, AP05CV03, AP05CV04, AP05CV05, AP05CV06, 
                                      AP05CV07, AP06CV02, AP06CV03, AP06CV04, AP06CV05, AP06CV06, 
                                      AP06CV07, AP07CV02, AP07CV03, AP07CV04, AP07CV05, AP07CV06, 
                                      AP07CV07, ATEND_PR, GESPRG3M, GESPRG4M, GESPRG6M))

    }
    if(grepl('LT', diretorio, fixed = T)){
      dados$CNES <- as.character(dados$CNES)
      names(dados)[1] <- 'FK_COD_CNES'

      dados$DISTRSAN <- as.character(dados$DISTRSAN)
      dados$DISTRSAN[is.na(dados$DISTRSAN)] <- '0000'
      dados$DISTRSAN <- as.factor(dados$DISTRSAN)

      dados$CLIENTEL <- as.character(dados$CLIENTEL)
      dados$CLIENTEL[is.na(dados$CLIENTEL)] <- '0000'
      dados$CLIENTEL <- as.factor(dados$CLIENTEL)

      dados$COMPETEN <- as.character(dados$COMPETEN)
      dados$COMPETEN <- as.Date(paste(dados$COMPETEN, '01',sep = ''), format = '%Y%m%d')

      dados<-subset(dados, select = -c(MICR_REG, DISTRADM, ESFERA_A, RETENCAO, NATUREZA, NIV_HIER, TERCEIRO, CODUFMUN, TPGESTAO, PF_PJ, QT_CONTR))

    }
    if(grepl('EQ', diretorio, fixed = T)){
      dados$CNES <- as.character(dados$CNES)
      names(dados)[1] <- 'FK_COD_CNES'

      dados$DISTRSAN <- as.character(dados$DISTRSAN)
      dados$DISTRSAN[is.na(dados$DISTRSAN)] <- '0000'
      dados$DISTRSAN <- as.factor(dados$DISTRSAN)

      dados$CLIENTEL <- as.character(dados$CLIENTEL)
      dados$CLIENTEL[is.na(dados$CLIENTEL)] <- '0000'
      dados$CLIENTEL <- as.factor(dados$CLIENTEL)

      dados$COMPETEN <- as.character(dados$COMPETEN)
      dados$COMPETEN <- as.Date(paste(dados$COMPETEN, '01',sep = ''), format = '%Y%m%d')

      dados<-subset(dados, select = -c(REGSAUDE, MICR_REG, DISTRADM, ESFERA_A, RETENCAO, NATUREZA, NIV_HIER, TERCEIRO, CODUFMUN, TPGESTAO))

    }
    if(grepl('GM', diretorio, fixed = T)){
      dados$CNES <- as.character(dados$CNES)
      names(dados)[1] <- 'FK_COD_CNES'

      dados$DISTRSAN <- as.character(dados$DISTRSAN)
      dados$DISTRSAN[is.na(dados$DISTRSAN)] <- '0000'
      dados$DISTRSAN <- as.factor(dados$DISTRSAN)

      dados$CLIENTEL <- as.character(dados$CLIENTEL)
      dados$CLIENTEL[is.na(dados$CLIENTEL)] <- '0000'
      dados$CLIENTEL <- as.factor(dados$CLIENTEL)

      dados$COMPETEN <- as.character(dados$COMPETEN)
      dados$COMPETEN <- as.Date(paste(dados$COMPETEN, '01',sep = ''), format = '%Y%m%d')

      dados<-subset(dados, select = -c(REGSAUDE, MICR_REG,DISTRADM,ESFERA_A,RETENCAO,NATUREZA,NIV_HIER,TERCEIRO,CODUFMUN,TPGESTAO))

    }
    if(grepl('IN', diretorio, fixed = T)){
      dados$CNES <- as.character(dados$CNES)
      names(dados)[1] <- 'FK_COD_CNES'

      dados$DISTRSAN <- as.character(dados$DISTRSAN)
      dados$DISTRSAN[is.na(dados$DISTRSAN)] <- '0000'
      dados$DISTRSAN <- as.factor(dados$DISTRSAN)

      dados$CLIENTEL <- as.character(dados$CLIENTEL)
      dados$CLIENTEL[is.na(dados$CLIENTEL)] <- '0000'
      dados$CLIENTEL <- as.factor(dados$CLIENTEL)
      
      dados$COMPETEN <- as.character(dados$COMPETEN)
      dados$COMPETEN <- as.Date(paste(dados$COMPETEN, '01',sep = ''), format = '%Y%m%d')

      dados<-subset(dados, select = -c(REGSAUDE, MICR_REG,DISTRADM,ESFERA_A,RETENCAO,NATUREZA,NIV_HIER,TERCEIRO,COD_CEP,CODUFMUN,TPGESTAO,PF_PJ,TP_PREST))

    }
    if(grepl('RC', diretorio, fixed = T)){
      names(dados)[1] <- 'FK_COD_CNES'

      dados$DISTRSAN <- as.character(dados$DISTRSAN)
      dados$DISTRSAN[is.na(dados$DISTRSAN)] <- '0000'
      dados$DISTRSAN <- as.factor(dados$DISTRSAN)

      dados$CLIENTEL <- as.character(dados$CLIENTEL)
      dados$CLIENTEL[is.na(dados$CLIENTEL)] <- '0000'
      dados$CLIENTEL <- as.factor(dados$CLIENTEL)

      dados$PORTARIA <- as.character(dados$PORTARIA)
      dados$PORTARIA[is.na(dados$PORTARIA)] <- '0000'
      dados$PORTARIA <- as.factor(dados$PORTARIA)
      
      dados$COMPETEN <- as.character(dados$COMPETEN)
      dados$COMPETEN <- as.Date(paste(dados$COMPETEN, '01',sep = ''), format = '%Y%m%d')

      dados<-subset(dados, select = -c(REGSAUDE, MICR_REG,DISTRADM,ESFERA_A,RETENCAO,NATUREZA,NIV_HIER,
                                      TERCEIRO,CODUFMUN,TPGESTAO,PF_PJ,VINC_SUS,TP_PREST,CPF_CNPJ))

    }
    if(grepl('PF', diretorio, fixed = T)){
      dados$CNES <- as.character(dados$CNES)
      names(dados)[1] <- 'FK_COD_CNES'

      dados$DISTRSAN <- as.character(dados$DISTRSAN)
      dados$DISTRSAN[is.na(dados$DISTRSAN)] <- '0000'
      dados$DISTRSAN <- as.factor(dados$DISTRSAN)

      dados$CLIENTEL <- as.character(dados$CLIENTEL)
      dados$CLIENTEL[is.na(dados$CLIENTEL)] <- '0000'
      dados$CLIENTEL <- as.factor(dados$CLIENTEL)

      dados$CPFUNICO <- as.character(dados$CPFUNICO)
      dados$CPFUNICO[is.na(dados$CPFUNICO)] <- '0000'
      dados$CPFUNICO <- as.factor(dados$CPFUNICO)

      dados$CONSELHO <- as.character(dados$CONSELHO)
      dados$CONSELHO[is.na(dados$CONSELHO)] <- '0000'
      dados$CONSELHO <- as.factor(dados$CONSELHO)

      dados$REGISTRO <- as.character(dados$REGISTRO)
      dados$REGISTRO[is.na(dados$REGISTRO)] <- '0000'
      dados$REGISTRO <- as.factor(dados$REGISTRO)
      
      dados$COMPETEN <- as.character(dados$COMPETEN)
      dados$COMPETEN <- as.Date(paste(dados$COMPETEN, '01',sep = ''), format = '%Y%m%d')


      dados<-subset(dados, select = -c(REGSAUDE, MICR_REG,DISTRADM,ESFERA_A,RETENCAO,NATUREZA,NIV_HIER,TERCEIRO,CODUFMUN,TPGESTAO,PF_PJ,QT_CONTR,CPFUNICO,VINCUL_N))

    }

    if(grepl('EP', diretorio, fixed = T)){
      dados$CNES <- as.character(dados$CNES)
      names(dados)[1] <- 'FK_COD_CNES'

      dados$DISTRSAN <- as.character(dados$DISTRSAN)
      dados$DISTRSAN[is.na(dados$DISTRSAN)] <- '0000'
      dados$DISTRSAN <- as.factor(dados$DISTRSAN)

      dados$CLIENTEL <- as.character(dados$CLIENTEL)
      dados$CLIENTEL[is.na(dados$CLIENTEL)] <- '0000'
      dados$CLIENTEL <- as.factor(dados$CLIENTEL)

      dados$NOMEAREA <- as.character(dados$NOMEAREA)
      dados$NOMEAREA[is.na(dados$NOMEAREA)] <- '0000'
      dados$NOMEAREA <- as.factor(dados$NOMEAREA)

      dados$DESCSEGM <- as.character(dados$DESCSEGM)
      dados$DESCSEGM[is.na(dados$DESCSEGM)] <- '0000'
      dados$DESCSEGM <- as.factor(dados$DESCSEGM)
      
      dados$COMPETEN <- as.character(dados$COMPETEN)
      dados$COMPETEN <- as.Date(paste(dados$COMPETEN, '01',sep = ''), format = '%Y%m%d')

      dados<-subset(dados, select = -c(REGSAUDE, MICR_REG,DISTRADM,ESFERA_A,RETENCAO,NATUREZA,NIV_HIER, PRONASCI, NAT_JUR
                                      TERCEIRO, CODUFMUN, TPGESTAO, TP_PREST, S_ALSEME, ORV50150, ORV50500, UN_COBAL, EQBRBAIX, 
                                      AP01CV03, AP01CV04, AP01CV07, AP02CV03, AP02CV04, AP02CV07, AP03CV03, AP03CV04, AP03CV07,
                                      AP04CV03, AP04CV04, AP04CV07, AP05CV02, AP05CV03, AP05CV04, AP05CV05, AP05CV06, AP05CV07,
                                      AP06CV02, AP06CV03, AP06CV04, AP06CV05, AP06CV06, AP06CV07, AP07CV02, AP07CV03, AP07CV04,
                                      AP07CV05, AP07CV06, AP07CV07, ATEND_PR, GESPRG3M, GESPRG4M, GESPRG6M, PF_PJ, EQBRMEDI,
                                      CNPJ_MAN, NIV_DEP, VINC_SUS, GESPRG1M, GESPRG2M, GESPRG5M, AP01CV02, AP01CV05, AP01CV06,
                                      AP02CV01, AP02CV02, AP02CV05, AP02CV06, AP03CV02, AP03CV05, AP03CV06, AP04CV02, AP04CV06,
                                      AP05CV02, ATEND_PR, QUILOMBO, ASSENTAD, ESCOLA, INDIGENA))

    }
    if(grepl('HB', diretorio, fixed = T)){
      dados$CNES <- as.character(dados$CNES)
      names(dados)[1] <- 'FK_COD_CNES'

      dados$DISTRSAN <- as.character(dados$DISTRSAN)
      dados$DISTRSAN[is.na(dados$DISTRSAN)] <- '0000'
      dados$DISTRSAN <- as.factor(dados$DISTRSAN)

      dados$CLIENTEL <- as.character(dados$CLIENTEL)
      dados$CLIENTEL[is.na(dados$CLIENTEL)] <- '0000'
      dados$CLIENTEL <- as.factor(dados$CLIENTEL)

      dados$REGSAUDE <- as.character(dados$REGSAUDE)
      dados$REGSAUDE[is.na(dados$REGSAUDE)] <- '0000'
      dados$REGSAUDE <- as.factor(dados$REGSAUDE)

      dados$PORTARIA <- as.character(dados$PORTARIA)
      dados$PORTARIA[is.na(dados$PORTARIA)] <- '0000'
      dados$PORTARIA <- as.factor(dados$PORTARIA)
      
      dados$COMPETEN <- as.character(dados$COMPETEN)
      dados$COMPETEN <- as.Date(paste(dados$COMPETEN, '01',sep = ''), format = '%Y%m%d')

      dados<-subset(dados, select = -c(MICR_REG,DISTRADM,ESFERA_A,RETENCAO,NATUREZA,NIV_HIER,TERCEIRO, CODUFMUN, TPGESTAO, PF_PJ, TP_PREST))
    }
    if(grepl('SR', diretorio, fixed = T)){
      names(dados)[1] <- 'FK_COD_CNES'

      dados$DISTRSAN <- as.character(dados$DISTRSAN)
      dados$DISTRSAN[is.na(dados$DISTRSAN)] <- '0000'
      dados$DISTRSAN <- as.factor(dados$DISTRSAN)

      dados$CLIENTEL <- as.character(dados$CLIENTEL)
      dados$CLIENTEL[is.na(dados$CLIENTEL)] <- '0000'
      dados$CLIENTEL <- as.factor(dados$CLIENTEL)

      dados<-subset(dados, select = -c(REGSAUDE, MICR_REG,DISTRADM,ESFERA_A,RETENCAO,NATUREZA,NIV_HIER,TERCEIRO,SRVUNICO,CNESTERC,CONTSRVU))
    }

    if(grepl('ST', diretorio, fixed = T)){
     names(dados)[1] <- 'FK_COD_CNES'

      dados$ALVARA <- as.character(dados$ALVARA)
      dados$ALVARA[is.na(dados$ALVARA)] <- '0000'
      dados$ALVARA <- as.factor(dados$ALVARA)

      dados$CLIENTEL <- as.character(dados$CLIENTEL)
      dados$CLIENTEL[is.na(dados$CLIENTEL)] <- '0000'
      dados$CLIENTEL <- as.factor(dados$CLIENTEL)

      dados$DT_EXPED <- as.character(dados$DT_EXPED)
      dados$DT_EXPED[is.na(dados$DT_EXPED)] <- '0000'
      dados$DT_EXPED <- as.factor(dados$DT_EXPED)

      dados$ORGEXPED <- as.character(dados$ORGEXPED)
      dados$ORGEXPED[is.na(dados$ORGEXPED)] <- '0000'
      dados$ORGEXPED <- as.factor(dados$ORGEXPED)

      dados$COMPETEN <- as.character(dados$COMPETEN)
      dados$COMPETEN <- as.Date(paste(dados$COMPETEN, '01',sep = ''), format = '%Y%m%d')

      dados<-subset(dados, select = -c(DISTRSAN,COD_IR,REGSAUDE, MICR_REG,DISTRADM,ESFERA_A,RETENCAO,NATUREZA,NIV_HIER,
                                      CO_BANCO,CO_AGENC,C_CORREN,CONTRATM,DT_PUBLE,AV_ACRED,CLASAVAL,DT_ACRED,AV_PNASS, 
                                      DT_PNASS,CODUFMUN,CODUFMUN,TP_PREST,GESPRG1M,GESPRG2M,GESPRG3M,GESPRG4M,GESPRG5M,
                                      GESPRG6M,SERAP07T,AP01CV03,AP01CV04,AP02CV03,AP02CV04,AP03CV03,AP03CV04,AP04CV03,
                                      AP04CV03,AP04CV04,AP04CV07,AP05CV03,AP05CV04,AP06CV03,AP06CV04,AP06CV05,AP06CV06,
                                      AP06CV07,AP07CV03,AP07CV04,AP07CV05,AP07CV07,ATEND_PR,QTLEITP1,QTLEITP2,QTLEITP3,
                                      QTINST08,QTINST14,QTINST15,QTINST16,QTINST17,QTINST18,QTINST23,QTINST25,QTINST31,
                                      QTLEIT05,QTLEIT06,QTLEIT07,QTLEIT08,QTINST32,QTINST40))
    }
  }

### Tabelas do SIA ###

  if(grepl('SIA', diretorio, fixed = T)){
    if(grepl('PA', diretorio, fixed = T)){
      names(dados)[1] <- 'FK_COD_CNES'
      names(dados)[21] <- 'FK_N_AIH'

      dados$PA_CBOCOD <- as.character(dados$PA_CBOCOD)
      dados$PA_CBOCOD[is.na(dados$PA_CBOCOD)] <- '0000'
      dados$PA_CBOCOD <- as.factor(dados$PA_CBOCOD)

      dados$PA_CIDCAS <- as.character(dados$PA_CIDCAS)
      dados$PA_CIDCAS[is.na(dados$PA_CIDCAS)] <- '0000'
      dados$PA_CIDCAS <- as.factor(dados$PA_CIDCAS)

      dados$IDADEMIN <- as.character(dados$IDADEMIN)
      dados$IDADEMIN[is.na(dados$IDADEMIN)] <- '0000'
      dados$IDADEMIN <- as.factor(dados$IDADEMIN)

      dados<-subset(dados, select = -c(PA_ETNIA,PA_SRV_C,PA_INE))

    }

    if(grepl('ACF', diretorio, fixed = T)){
      names(dados)[4] <- 'FK_COD_CNES'
      names(dados)[5]<- 'FK_N_AIH'

      dados<-subset(dados, select = -c(AP_ETNIA))
    }

    if(grepl('PS', diretorio, fixed = T)){
      names(dados)[1] <- 'FK_COD_CNES'
      #names(dados)[5]<- 'FK_N_AIH'

      dados$TP_DROGA <- as.character(dados$TP_DROGA)
      dados$TP_DROGA[is.na(dados$TP_DROGA)] <- '0000'
      dados$TP_DROGA <- as.factor(dados$TP_DROGA)

      dados<-subset(dados, select = -c(ETNIA, DT_MOTCOB, CIDASSOC,DT_FIM, CNES_ESF,INICIO,FIM,PERMANEN))
    }

    if(grepl('AD', diretorio, fixed = T)){
      names(dados)[4] <- 'FK_COD_CNES'
      names(dados)[5]<- 'FK_N_AIH'

      dados$AP_DTOCOR <- as.character(dados$AP_DTOCOR)
      dados$AP_DTOCOR[is.na(dados$AP_DTOCOR)] <- '0000'
      dados$AP_DTOCOR <- as.factor(dados$AP_DTOCOR)

      dados<-subset(dados, select = -c(AP_ETNIA))
    }

    if(grepl('AQ', diretorio, fixed = T)){
      names(dados)[4] <- 'FK_COD_CNES'
      names(dados)[5]<- 'FK_N_AIH'

      dados$AQ_ESTADI <- as.character(dados$AQ_ESTADI)
      dados$AQ_ESTADI[is.na(dados$AQ_ESTADI)] <- '0000'
      dados$AQ_ESTADI <- as.factor(dados$AQ_ESTADI)

      dados$AQ_ESQU_P2 <- as.character(dados$AQ_ESQU_P2)
      dados$AQ_ESQU_P2[is.na(dados$AQ_ESQU_P2)] <- '0000'
      dados$AQ_ESQU_P2 <- as.factor(dados$AQ_ESQU_P2)

      dados<-subset(dados, select = -c(AP_ETNIA, AP_DTOCOR, AQ_CID10,AQ_CIDINI1, AQ_DTINI1,AQ_CIDINI2,AQ_DTINI2,AQ_CIDINI3,AQ_DTINI3))
    }

    if(grepl('AR', diretorio, fixed = T)){
      names(dados)[4] <- 'FK_COD_CNES'
      names(dados)[5]<- 'FK_N_AIH'

      dados$AQ_ESTADI <- as.character(dados$AR_ESTADI)
      dados$AQ_ESTADI[is.na(dados$AQ_ESTADI)] <- '0000'
      dados$AQ_ESTADI <- as.factor(dados$AQ_ESTADI)

      dados<-subset(dados, select = -c(AP_ETNIA, AR_SMRD, AR_CID10,AR_TRANTE, AR_CIDINI1,AR_CIDINI2,AR_CIDINI3,AR_DTINI1,AR_DTINI2,
                                      AR_DTINI3,AR_CIDTR2,AR_CIDTR3,AR_NUMC1,AR_INIAR3,AR_FIMAR2,AR_FIMAR3,AR_NUMC2,AR_NUMC3))
    }

    if(grepl('ATD', diretorio, fixed = T)){
      names(dados)[4] <- 'FK_COD_CNES'
      names(dados)[5]<- 'FK_N_AIH'

      dados$ATD_KTVSEM <- as.character(dados$ATD_KTVSEM)
      dados$ATD_KTVSEM[is.na(dados$ATD_KTVSEM)] <- '0000'
      dados$ATD_KTVSEM <- as.factor(dados$ATD_KTVSEM)

      dados$ATD_TRU <- as.character(dados$ATD_TRU)
      dados$ATD_TRU[is.na(dados$ATD_TRU)] <- '0000'
      dados$ATD_TRU <- as.factor(dados$ATD_TRU)

      dados$ATD_ALBUMI <- as.character(dados$ATD_ALBUMI)
      dados$ATD_ALBUMI[is.na(dados$ATD_ALBUMI)] <- '0000'
      dados$ATD_ALBUMI <- as.factor(dados$ATD_ALBUMI)

      dados$ATD_PTH <- as.character(dados$ATD_PTH)
      dados$ATD_PTH[is.na(dados$ATD_PTH)] <- '0000'
      dados$ATD_PTH <- as.factor(dados$ATD_PTH)

      dados$ATD_HIV <- as.character(dados$ATD_HIV)
      dados$ATD_HIV[is.na(dados$ATD_HIV)] <- '0000'
      dados$ATD_HIV <- as.factor(dados$ATD_HIV)

      dados$ATD_HCV <- as.character(dados$ATD_HCV)
      dados$ATD_HCV[is.na(dados$ATD_HCV)] <- '0000'
      dados$ATD_HCV <- as.factor(dados$ATD_HCV)

      dados$ATD_HBSAG <- as.character(dados$ATD_HBSAG)
      dados$ATD_HBSAG[is.na(dados$ATD_HBSAG)] <- '0000'
      dados$ATD_HBSAG <- as.factor(dados$ATD_HBSAG)

      dados<-subset(dados, select = -c(AP_DTOCOR,AP_ETNIA,ATD_MAISNE,ATD_SITINI,AP_SEAPTO))
    }

    if(grepl('AM', diretorio, fixed = T)){
      names(dados)[4] <- 'FK_COD_CNES'
      names(dados)[5]<- 'FK_N_AIH'

      dados$AP_MVM <- as.character(dados$AP_MVM)
      dados$AP_MVM <- as.Date(paste(dados$AP_MVM, '01',sep = ''), format = '%Y%m%d')

      dados<-subset(dados, select = -c(AP_ETNIA, AP_DTOCOR,AP_CONDIC,AP_GESTAO,AP_UFMUN,
                                       AP_TPUPS,AP_TIPPRE,AP_MN_IND,AP_CNPJCPF,AP_CNPJMNT,
                                       AP_UFNACIO,AP_MNDIF,AP_TPATEN,AP_ALTA,AP_CATEND,
                                       AP_APACANT,AP_CIDCAS,AP_CIDSEC,AM_TRANSPL,AM_QTDTRAN,
                                       AP_NATJUR,AP_VL_AP))
    }
  }

### Tabelas do SIH ###

  if(grepl('SIH', diretorio, fixed = T)){
    if(grepl('RD', diretorio, fixed = T)){
      names(dados)[75] <- 'FK_COD_CNES'
      names(dados)[6] <- 'FK_N_AIH'

      dados$CGC_HOSP <- as.character(dados$CGC_HOSP)
      dados$CGC_HOSP[is.na(dados$CGC_HOSP)] <- '0000'
      dados$CGC_HOSP <- as.factor(dados$CGC_HOSP)

      dados$CNPJ_MANT <- as.character(dados$CNPJ_MANT)
      dados$CNPJ_MANT[is.na(dados$CNPJ_MANT)] <- '0000'
      dados$CNPJ_MANT <- as.factor(dados$CNPJ_MANT)

      dados$NUM_FILHOS <- as.numeric(dados$NUM_FILHOS)
      dados$NASC <- as.Date(dados$NASC, format = '%Y%m%d')
      dados$DT_INTER <- as.Date(dados$DT_INTER, format = '%Y%m%d')
      dados$DT_SAIDA <- as.Date(dados$DT_SAIDA, format = '%Y%m%d')
      dados$TEMPO_INTER <- dados$DT_SAIDA-dados$DT_INTER

      dados<-subset(dados, select = -c(NUM_PROC,CPF_AUT,CID__NOTIF,GESTOR_DT,INFEHOSP,FAEC_TP,AUD_JUST,
                                      SIS_JUST,DIAGSEC1,DIAGSEC2,DIAGSEC3,DIAGSEC4,DIAGSEC5,DIAGSEC6,DIAGSEC7, 
                                      DIAGSEC8,DIAGSEC9,UF_ZI, RUBRICA, GESTAO, MUNIC_MOV, NUM_PROC, CPF_AUT, ETNIA, AUD_JUST))
    }

    if(grepl('SP', diretorio, fixed = T)){
      names(dados)[5] <- 'FK_COD_CNES'
      names(dados)[6] <- 'FK_N_AIH'

      dados$SP_DTINTER <- as.Date(dados$SP_DTINTER, format = '%Y%m%d')
      dados$SP_DTSAIDA <- as.Date(dados$SP_DTSAIDA, format = '%Y%m%d')
      dados$TEMPO_INTER <- dados$SP_DTSAIDA-dados$SP_DTINTER

      dados<-subset(dados, select = -c(SP_NUM_PR, SP_TIPO, SP_TP_ATO, SP_NF, SP_CO_FAEC, SP_GESTOR, SP_UF, SP_M_HOSP, SP_CIDSEC))
    }

    if(grepl('ER', diretorio, fixed = T)){
      names(dados)[3] <- 'FK_COD_CNES'
      names(dados)[4] <- 'FK_N_AIH'

      dados$DT_INTER <- as.Date(dados$DT_INTER, format = '%Y%m%d')
      dados$DT_SAIDA <- as.Date(dados$DT_SAIDA, format = '%Y%m%d')
      dados$TEMPO_INTER <- dados$DT_SAIDA-dados$DT_INTER

      dados<-subset(dados, select = -c(MUN_MOV, UF_ZI))
    }

    if(grepl('RJ', diretorio, fixed = T)){
      names(dados)[75] <- 'FK_COD_CNES'
      names(dados)[6] <- 'FK_N_AIH'

      dados$CGC_HOSP <- as.character(dados$CGC_HOSP)
      dados$CGC_HOSP[is.na(dados$CGC_HOSP)] <- '0000'
      dados$CGC_HOSP <- as.factor(dados$CGC_HOSP)

      dados$CNPJ_MANT <- as.character(dados$CNPJ_MANT)
      dados$CNPJ_MANT[is.na(dados$CNPJ_MANT)] <- '0000'
      dados$CNPJ_MANT <- as.factor(dados$CNPJ_MANT)

      dados$DT_INTER <- as.Date(dados$DT_INTER, format = '%Y%m%d')
      dados$DT_SAIDA <- as.Date(dados$DT_SAIDA, format = '%Y%m%d')
      dados$TEMPO_INTER <- dados$DT_SAIDA-dados$DT_INTER

      dados$NUM_FILHOS <- as.numeric(dados$NUM_FILHOS)

      dados<-subset(dados, select = -c(NUM_PROC, CPF_AUT, CID_NOTIF, GESTOR_COD, GESTOR_DT, INFEHOSP, FAEC_TP, UF_ZI, IDENT, GESTAO, RUBRICA, MUNIC_MOV, ETNIA))
    }

  }
}
