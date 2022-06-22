#' função para definir o diretório de cada tabela do datasus automaticamente
#' @link é o link de download da tabela
#' @tabela é o nome da tabela que está sendo baixada

caminho <- function(link,tabela){
  if(grepl('SIA', link, fixed = T)){
    base <- 'SIA'
    if(grepl('PA', tabela, fixed = T)){
      tabela <- 'PA'}
    if(grepl('ABDF', tabela, fixed = T)){
      tabela <- 'AB'}
    if(grepl('ABO', tabela, fixed = T)){
      tabela <- 'ABO' }
    if(grepl('ACF', tabela, fixed = T)){
      tabela <- 'ACF'}
    if(grepl('AD', tabela, fixed = T)){
      tabela <- 'AD'}
    if(grepl('AM', tabela, fixed = T)){
      tabela <- 'AM'}
    if(grepl('AN', tabela, fixed = T)){
      tabela <- 'AN'}
    if(grepl('AQ', tabela, fixed = T)){
      tabela <- 'AQ'}
    if(grepl('AR', tabela, fixed = T)){
      tabela <- 'AR'}
    if(grepl('ATD', tabela, fixed = T)){
      tabela <- 'ATD'}
    if(grepl('PS', tabela, fixed = T)){
      tabela <- 'PS'}
    if(grepl('SAD', tabela, fixed = T)){
      tabela <- 'SAD'}
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
