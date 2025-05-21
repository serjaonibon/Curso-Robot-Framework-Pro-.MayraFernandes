*** Settings ***
Documentation    Exercício de fixação 
Resource    exercicio_de_fixacao_resources.robot




*** Test Cases ***
Caso de Teste 01 - Adicionar Produto no Carrinho 
    [Documentation]    Exercício de fixação de aprendizado
    [Tags]             adicionar_carrinho 

    Acessar a home page do site Amazon.com.br 
    Digitar o nome de produto "WHEY 100% HD GOURMET BAUNILHA 900G" no campo de pesquisa
    Clicar no botão de pesquisa 
    Verificar o resultado da pesquisa se está listando o produto "WHEY 100% HD GOURMET BAUNILHA 900G"
    Adicionar o produto "WHEY 100% HD GOURMET BAUNILHA 900G" no carrinho
    Verificar se o produto "WHEY 100% HD GOURMET BAUNILHA 900G" foi adicionado com sucesso 


Caso de Teste 02 - Remover Produto do Carrinho
    [Documentation]    Esse teste verifica a remoção de um produto no carrinho de compras
    [Tags]             remover_carrinho
    Acessar a home page do site Amazon.com.br 
    Digitar o nome de produto "WHEY 100% HD GOURMET BAUNILHA 900G" no campo de pesquisa
    Clicar no botão de pesquisa 
    Verificar o resultado da pesquisa se está listando o produto "WHEY 100% HD GOURMET BAUNILHA 900G"
    Adicionar o produto "WHEY 100% HD GOURMET BAUNILHA 900G" no carrinho
    Verificar se o produto "WHEY 100% HD GOURMET BAUNILHA 900G" foi adicionado com sucesso
    Remover o produto "WHEY 100% HD GOURMET BAUNILHA 900G" do carrinho
    Verificar se o carrinho fica vazio
