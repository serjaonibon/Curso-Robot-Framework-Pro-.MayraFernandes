*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${URL}                            https://www.amazon.com.br
${OFERTAS_DO_DIA}                 //a[normalize-space()='Ofertas do Dia']
${OFERTAS_E_PROMOCOES}            //h1[@class='a-size-extra-large a-spacing-micro a-text-bold']
${TEXTO_OFERTA_E_PROMOCOES}       Ofertas e Promoções
${EXCLUSIVO_PRIME}                //button[normalize-space()='Exclusivo Prime']
${PRODUTO}                        //input[@id='twotabsearchtextbox']
${XBOX-S}                         //div[@class='s-widget-container s-spacing-small s-widget-container-height-small celwidget slot=MAIN template=SEARCH_RESULTS widgetId=search-results_1']//a[@class='a-size-base a-link-normal s-underline-text s-underline-link-text s-link-style a-text-bold'][normalize-space()='Xbox Series S']



*** Keywords ***
Abrir o navegador
    Open Browser    browser=chrome    options=add_experimental_option("detach", True)
    Maximize Browser Window

Fechar o navegador
    Capture Page Screenshot
    Close Browser

Acessar a home page do site Amazon.com.br
    Go To    url=${URL}
    Sleep    25
    Wait Until Element Is Visible    locator=${OFERTAS_DO_DIA}

Entrar no menu "Ofertas do Dia"
    Click Element    locator=${OFERTAS_DO_DIA}

Verificar se aparece a frase Ofertas e Promoções
    Wait Until Page Contains            text=${TEXTO_OFERTA_E_PROMOCOES} 
    Wait Until Element Is Visible       locator=//h1[@class='a-size-extra-large a-spacing-micro a-text-bold']

Verificar se o título da página fica "${TITULO}"
    Title Should Be    title=${TITULO}

Verificar se aparece a categoria "${EXCLUSIVO_PRIME}"
    Element Should Be Visible    locator=//button[normalize-space()='Exclusivo Prime']

Digitar o nome de produto "${PRODUTO}" no campo de pesquisa
    Input Text    locator=//input[@id='twotabsearchtextbox']   text=${PRODUTO}

Clicar no botão de pesquisa
    Click Element    locator=//input[@id='nav-search-submit-button']

verificar o resultado da pesquisa se está listando o produto CONSOLE_X_BOM_SERIES_X
    Element Should Be Visible    locator=//span[@class='a-color-state a-text-bold']

Verificar o resultado da pesquisa se está listando o produto "console xbox"
    Element Should Be Visible    locator=${XBOX-S}


Adicionar o produto "Console Xbox Series S" no carrinho
    Click Element    locator=//div[@class='s-widget-container s-spacing-small s-widget-container-height-small celwidget slot=MAIN template=SEARCH_RESULTS widgetId=search-results_1']//a[@class='a-size-base a-link-normal s-underline-text s-underline-link-text s-link-style a-text-bold'][normalize-space()='Xbox Series S']    

#GHERKIN STEPS
Dado que estou na home page da Amazon.com.br
    Acessar a home page do site Amazon.com.br
    Verificar se o título da página fica "Amazon.com.br | Tudo pra você, de A a Z."
    
Quando acessar o menu "Ofertas do Dia"
    Entrar no menu "Ofertas do Dia"

Então o título da página deve ficar "Ofertas e Promoções | Amazon.com.br"
    Verificar se o título da página fica "Ofertas e Promoções | Amazon.com.br"

E o texto "Ofertas e Promoções" deve ser exibido na página
    Verificar se aparece a frase Ofertas e Promoções

E a categoria "Exclusivo Prime" deve ser exibida na página
    Verificar se aparece a categoria "Exclusivo Prime"

Quando pesquisar pelo produto "Xbox Series S"
    Digitar o nome de produto "Xbox Series S" no campo de pesquisa
    Clicar no botão de pesquisa

Então o título da página deve ficar "Amazon.com.br : Xbox Series S"
    Verificar se o título da página fica "Amazon.com.br : Xbox Series S"

E um produto da linha "Xbox Series S" deve ser mostrado na página
    verificar o resultado da pesquisa se está listando o produto CONSOLE_X_BOM_SERIES_X