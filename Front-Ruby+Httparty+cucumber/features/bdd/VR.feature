# language: pt
# Autor: Daniel-Oliveira

Funcionalidade: Realizar uma busca no endpoint solicitado
    Para averiguar informacoes
    O usuario do sistema
    Deseja poder consultar informacoes dos estabelecimentos

    Cenario: Buscar informacoes dos tipos de estabelecimento
        Dado que o usuario consulte informacoes
        Quando ele realizar a pesquisa
        Entao visualizo o json com typeOfEstablishment
        E imprimo aleatoriamente algum estabelecimento