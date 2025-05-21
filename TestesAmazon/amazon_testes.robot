*** Settings ***
Documentation    Essa suite testa o site da amazon.com.br
Resource         amazon_resources.robot
Test Setup       Abrir o navegador
Test Teardown    Fechar o navegador


*** Keywords ***


*** Test Cases ***
Caso de Teste 01 - Acesso ao menu "Ofertas"
    [Documentation]    Esse teste verifica o menu de ofertas da AMAZON
    ...                e verifica a categoria ofertas do dia
    [Tags]             menus    categoria
    Acessar a home page do site Amazon.com.br
    Verificar se o título da página fica "Amazon.com.br | Tudo pra você, de A a Z."
    Entrar no menu "Ofertas do Dia"
    Verificar se aparece a frase Ofertas e Promoções
    Verificar se o título da página fica "Ofertas e Promoções | Amazon.com.br"
    Verificar se aparece a categoria "Exclusivo Prime"

Caso de Teste 02 - Pesquisa de um Produto
    [Documentation]    Verifica a busca de produto
    [Tags]             busca_produtos    lista_busca
    Acessar a home page do site Amazon.com.br
    Digitar o nome de produto "Xbox Series S" no campo de pesquisa
    Clicar no botão de pesquisa
    verificar o resultado da pesquisa se está listando o produto CONSOLE_X_BOM_SERIES_X