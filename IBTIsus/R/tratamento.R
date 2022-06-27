tratamento <- function(dados){
  for(i in 1:length(dados)){
    if(is.factor(dados[,i])){
      dados[,i]<-levels(dados[,i])[dados[,i]]
    }
  }
}
