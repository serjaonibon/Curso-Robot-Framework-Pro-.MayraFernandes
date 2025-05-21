*** Settings ***
Library    SeleniumLibrary


*** Keywords ***

Acessar a home page do site Amazon.com.br 
    Open Browser    https://www.amazon.com.br/    browser=chrome 
    Maximize Browser Window
    
    Sleep    15 
Digitar o nome de produto "WHEY 100% HD GOURMET BAUNILHA 900G" no campo de pesquisa
    Input Text    locator=//input[@id='twotabsearchtextbox']    text=WHEY 100% HD GOURMET BAUNILHA 900G
    # Sleep    3
Clicar no botão de pesquisa 
    Click Button    locator=//input[@id='nav-search-submit-button']
    # Sleep    3
Verificar o resultado da pesquisa se está listando o produto "WHEY 100% HD GOURMET BAUNILHA 900G"
    Element Should Be Visible    locator=//span[normalize-space()='WHEY 100% HD GOURMET BAUNILHA 900G']
    # Sleep    3
Adicionar o produto "WHEY 100% HD GOURMET BAUNILHA 900G" no carrinho
    Element Should Be Visible    locator=//span[normalize-space()='WHEY 100% HD GOURMET BAUNILHA 900G']
    # Sleep    3
    Click Element                locator=//span[normalize-space()='WHEY 100% HD GOURMET BAUNILHA 900G']
    # Sleep    3
    Click Button                locator=//input[@id='add-to-cart-button']
    # Sleep    5

Verificar se o produto "WHEY 100% HD GOURMET BAUNILHA 900G" foi adicionado com sucesso
    Click Element                locator=//a[@href='/cart?ref_=sw_gtc']
    Element Should Be Visible    locator=//span[@class='a-truncate-cut'][normalize-space()='WHEY 100% HD GOURMET BAUNILHA 900G']
    
Remover o produto "WHEY 100% HD GOURMET BAUNILHA 900G" do carrinho
    Click Element    css=input[value='Excluir'][aria-label='Excluir WHEY 100% HD GOURMET BAUNILHA 900G']
    
Verificar se o carrinho fica vazio
    Wait Until Element Is Visible    id=sc-subtotal-label-activecart    timeout=10
    Element Text Should Be           id=sc-subtotal-label-activecart    Subtotal (0 produtos):
