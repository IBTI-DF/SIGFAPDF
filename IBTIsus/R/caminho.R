#' função para definir o diretório de cada tabela do datasus automaticamente
#' @param link é o link de download da tabela
#' @param tabela é o nome da tabela que está sendo baixada
#' @return retorna o diretório que receberá o arquivo
#' @example
#' caminho(link,tabela)

caminho <- function(link,tabela){
  if(grepl('SIA', link, fixed = T)){
    base <- 'SIA'
    if(grepl('PADF', tabela, fixed = T)){
      tabela <- 'PA'}
    if(grepl('ABDF', tabela, fixed = T)){
      tabela <- 'AB'}
    if(grepl('ABODF', tabela, fixed = T)){
      tabela <- 'ABO' }
    if(grepl('ACFDF', tabela, fixed = T)){
      tabela <- 'ACF'}
    if(grepl('ADDF', tabela, fixed = T)){
      tabela <- 'AD'}
    if(grepl('AMDF', tabela, fixed = T)){
      tabela <- 'AM'}
    if(grepl('ANDF', tabela, fixed = T)){
      tabela <- 'AN'}
    if(grepl('AQDF', tabela, fixed = T)){
      tabela <- 'AQ'}
    if(grepl('ARDF', tabela, fixed = T)){
      tabela <- 'AR'}
    if(grepl('ATDDF', tabela, fixed = T)){
      tabela <- 'ATD'}
    if(grepl('PSDF', tabela, fixed = T)){
      tabela <- 'PS'}
    if(grepl('SADDF', tabela, fixed = T)){
      tabela <- 'SAD'}
    if(grepl('BIDF', tabela, fixed = T)){
      tabela <- 'BI'}
  }
  else if(grepl('CNES', link, fixed = T)){
    base <- 'CNES'
    if(grepl('DC', tabela, fixed = T)){
      tabela <- 'DC'}
    if(grepl('EE', tabela, fixed = T)){
      tabela <- 'EE'}
    if(grepl('EF', tabela, fixed = T)){
      tabela <- 'EF'}
    if(grepl('EP', tabela, fixed = T)){
      tabela <- 'EP'}
    if(grepl('EQ', tabela, fixed = T)){
      tabela <- 'EQ'}
    if(grepl('GM', tabela, fixed = T)){
      tabela <- 'GM'}
    if(grepl('HB', tabela, fixed = T)){
      tabela <- 'HB'}
    if(grepl('IN', tabela, fixed = T)){
      tabela <- 'IN'}
    if(grepl('LT', tabela, fixed = T)){
      tabela <- 'LT'}
    if(grepl('PF', tabela, fixed = T)){
      tabela <- 'PF'}
    if(grepl('RC', tabela, fixed = T)){
      tabela <- 'RC'}
    if(grepl('SR', tabela, fixed = T)){
      tabela <- 'SR'}
    if(grepl('ST', tabela, fixed = T)){
      tabela <- 'ST'}
  }
  else if(grepl('SIH', link, fixed = T)){
    base <- 'SIH'
    if(grepl('RDDF', tabela, fixed = T)){
      tabela <- 'RD'}
    if(grepl('ERDF', tabela, fixed = T)){
      tabela <- 'ER'}
    if(grepl('RJDF', tabela, fixed = T)){
      tabela <- 'RJ'}
    if(grepl('SPDF', tabela, fixed = T)){
      tabela <- 'SP'}
  }
  return(paste0(base,'/',tabela,'/'))
}
