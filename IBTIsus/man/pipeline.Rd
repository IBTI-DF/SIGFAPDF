\name{pipeline}
\alias{pipeline}
\title{Pipeline de coleta e tratamento de dados da saúde pública}

\description{
Pipeline de coleta e tratamento automático dos dados do datasus. Criando e organizando um Data Lake local, salvando os arquivos brutos (em .dbc) e convertidos para CSV.
}
\usage{
pipeline(pasta = getwd(), periodo = 0)
}

\arguments{
\item{pasta}{caminho do diretório no qual será criado o Data Lake}
\item{periodo}{data em que os dados foram atualizados (note que definindo uma data, a função só fará o download dos dados atualizados naquele dia. Ao não definir uma data, todos os dados serão baixados.)}
}

\seealso{
\code{\link{https://github.com/IBTI-DF/SIGFAPDF/tree/main/IBTIsus}}
}

\examples{
##baixa todos os dados e cria o data lake no diretório vigente
pipeline()

##baixa os dados atualizados no dia 23 de junho de 2022 e cria o data lake no diretório especificado
pipeline('caminho do diretório/', '06-23-22')
}

