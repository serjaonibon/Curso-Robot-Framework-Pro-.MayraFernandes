*** Settings ***
Documentation    Essa suite testa o site da amazon.com.br
Resource         amazon_resources.robot
Test Setup       Abrir o navegador
Test Teardown    Fechar o navegador


*** Test Cases ***
Caso de Teste 01 - Acesso ao menu "Ofertas"
    [Documentation]    Esse teste verifica o menu de ofertas da AMAZON
    ...                e verifica a categoria ofertas do dia
    [Tags]             menus    categoria


    Dado que estou na home page da Amazon.com.br
    Quando acessar o menu "Ofertas do Dia"
    Então o título da página deve ficar "Ofertas e Promoções | Amazon.com.br"
    E o texto "Ofertas e Promoções" deve ser exibido na página
    E a categoria "Exclusivo Prime" deve ser exibida na página


Caso de Teste 02 - Pesquisa de um Produto
    [Documentation]    Verifica a busca de produto
    [Tags]             busca_produtos    lista_busca

    Dado que estou na home page da Amazon.com.br
    Quando pesquisar pelo produto "Xbox Series S"
    Então o título da página deve ficar "Amazon.com.br : Xbox Series S"
    E um produto da linha "Xbox Series S" deve ser mostrado na página

    





