limpeza <- function(dados, diretorio){

  if(grepl('CNES', diretorio, fixed = T)){
    if(grepl('LT', diretorio, fixed = T)){
      names(dados)[1] <- 'FK_COD_CNES'

      dados$DISTRSAN <- as.character(dados$DISTRSAN)
      dados$DISTRSAN[is.na(dados$DISTRSAN)] <- '0000'
      dados$DISTRSAN <- as.factor(dados$DISTRSAN)

      dados$CLIENTEL <- as.character(dados$CLIENTEL)
      dados$CLIENTEL[is.na(dados$CLIENTEL)] <- '0000'
      dados$CLIENTEL <- as.factor(dados$CLIENTEL)

      dados<-subset(dados, select = -c(REGSAUDE, MICR_REG,DISTRADM,ESFERA_A,RETENCAO,NATUREZA,NIV_HIER,TERCEIRO))

    }
    if(grepl('EQ', diretorio, fixed = T)){
      names(dados)[1] <- 'FK_COD_CNES'

      dados$DISTRSAN <- as.character(dados$DISTRSAN)
      dados$DISTRSAN[is.na(dados$DISTRSAN)] <- '0000'
      dados$DISTRSAN <- as.factor(dados$DISTRSAN)

      dados$CLIENTEL <- as.character(dados$CLIENTEL)
      dados$CLIENTEL[is.na(dados$CLIENTEL)] <- '0000'
      dados$CLIENTEL <- as.factor(dados$CLIENTEL)

      dados<-subset(dados, select = -c(REGSAUDE, MICR_REG,DISTRADM,ESFERA_A,RETENCAO,NATUREZA,NIV_HIER,TERCEIRO))

    }
    if(grepl('GM', diretorio, fixed = T)){
      names(dados)[1] <- 'FK_COD_CNES'

      dados$DISTRSAN <- as.character(dados$DISTRSAN)
      dados$DISTRSAN[is.na(dados$DISTRSAN)] <- '0000'
      dados$DISTRSAN <- as.factor(dados$DISTRSAN)

      dados$CLIENTEL <- as.character(dados$CLIENTEL)
      dados$CLIENTEL[is.na(dados$CLIENTEL)] <- '0000'
      dados$CLIENTEL <- as.factor(dados$CLIENTEL)

      dados<-subset(dados, select = -c(REGSAUDE, MICR_REG,DISTRADM,ESFERA_A,RETENCAO,NATUREZA,NIV_HIER,TERCEIRO))

    }
    if(grepl('IN', diretorio, fixed = T)){
      names(dados)[1] <- 'FK_COD_CNES'

      dados$DISTRSAN <- as.character(dados$DISTRSAN)
      dados$DISTRSAN[is.na(dados$DISTRSAN)] <- '0000'
      dados$DISTRSAN <- as.factor(dados$DISTRSAN)

      dados$CLIENTEL <- as.character(dados$CLIENTEL)
      dados$CLIENTEL[is.na(dados$CLIENTEL)] <- '0000'
      dados$CLIENTEL <- as.factor(dados$CLIENTEL)

      dados<-subset(dados, select = -c(REGSAUDE, MICR_REG,DISTRADM,ESFERA_A,RETENCAO,NATUREZA,NIV_HIER,TERCEIRO,COD_CEP))

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

      dados<-subset(dados, select = -c(REGSAUDE, MICR_REG,DISTRADM,ESFERA_A,RETENCAO,NATUREZA,NIV_HIER,TERCEIRO))

    }
    if(grepl('PF', diretorio, fixed = T)){
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


      dados<-subset(dados, select = -c(REGSAUDE, MICR_REG,DISTRADM,ESFERA_A,RETENCAO,NATUREZA,NIV_HIER,TERCEIRO))

    }

    if(grepl('EP', diretorio, fixed = T)){
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

      dados<-subset(dados, select = -c(REGSAUDE, MICR_REG,DISTRADM,ESFERA_A,RETENCAO,NATUREZA,NIV_HIER,TERCEIRO))

    }
    if(grepl('HB', diretorio, fixed = T)){
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

      dados<-subset(dados, select = -c(MICR_REG,DISTRADM,ESFERA_A,RETENCAO,NATUREZA,NIV_HIER,TERCEIRO))
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

      dados<-subset(dados, select = -c(DISTRSAN,COD_IR,REGSAUDE, MICR_REG,DISTRADM,ESFERA_A,RETENCAO,NATUREZA,NIV_HIER,CO_BANCO,CO_AGENC,C_CORREN,CONTRATM,DT_PUBLE,AV_ACRED,CLASAVAL,DT_ACRED,AV_PNASS,DT_PNASS))
    }
  }

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

      dados<-subset(dados, select = -c(AP_ETNIA, AR_SMRD, AR_CID10,AR_TRANTE, AR_CIDINI1,AR_CIDINI2,AR_CIDINI3,AR_DTINI1,AR_DTINI2,AR_DTINI3,AR_CIDTR2,AR_CIDTR3,AR_NUMC1,AR_INIAR3,AR_FIMAR2,AR_FIMAR3,AR_NUMC2,AR_NUMC3))
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

      dados<-subset(dados, select = -c(AP_ETNIA, AP_DTOCOR))
    }
  }


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

      dados<-subset(dados, select = -c(NUM_PROC,CPF_AUT,CID__NOTIF,GESTOR_DT,INFEHOSP,FAEC_TP,AUD_JUST,SIS_JUST,DIAGSEC1,DIAGSEC2,DIAGSEC3,DIAGSEC4,DIAGSEC5,DIAGSEC6,DIAGSEC7,DIAGSEC8,DIAGSEC9))
    }
  }
}