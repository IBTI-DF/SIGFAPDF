# <img src="https://github.com/IBTI-DF/SIGFAPDF/blob/main/docs/imagens/icone-ibti.png?raw=true" width="32" height="30"> Projeto Saúde - IBTI

O [**Projeto Saúde**](link) é desenvolvido pelo IBTI e tem como objetivo principal implementar um ambiente de BI como serviços para apoio às atividades gerenciais da  Saúde Pública do GDF.

O projeto conta com um pacote na linguagem R chamado IBTIsus, onde é possível gerar um Data Lake automaticamente com todos os dados públicos do DataSUS organizados em diferentes zonas lógicas de armazenamento.


## Fluxograma
```mermaid
flowchart LR
H[(DataSUS)] --> A(Dados baixados) --> B{Pasta Raw}
L[(ANS)] --> A
B -- .dbc --> C(Pasta DBC)
B -- .csv --> D(Pasta CSV)
D -- Após limpeza --> E(Pasta Curated)
E -- Após tratamento --> F(Pasta Refined) --> G[(Banco de Dados IBTI)] --> I(Análise Preditiva) --> J(Modelo Preditivo) --> K(Visualização)
G --> K
subgraph Bases de Dados
H
L
end
subgraph Data Lake
B
A
C
D
E
F
end
subgraph Ambiente BI
I
G
J
K
end
```

## Documentação

A documentação completa do projeto pode ser lida clicando [aqui](link).

## Guia do Usuário

Aprenda a visualizar os dados públicos do DataSUS seguindo o [guia do usuário](link), onde se encontra o tutorial de utilização do sistema.

## Funcionalidades do projeto
[**Filtragem dos dados:**](link)
<img src="">
[**Modelos de Previsão:**](link)
<img src="">
