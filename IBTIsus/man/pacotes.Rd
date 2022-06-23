#' função para os pacotes necessários automaticamente
#' @example
#' pacotes()
\title{pacotes}
\name{pacotes}
pacotes <- function(){

  if(!nzchar(system.file(package = 'read.dbc'))){
    install.packages('read.dbc')
  }
  library(read.dbc)
}

