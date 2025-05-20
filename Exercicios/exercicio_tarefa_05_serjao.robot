*** Settings ***
Library    FakerLibrary
Library    String

*** Variables ***
&{PESSOA}    nome=Sergio    sobrenome=Nibon


*** Test Cases ***
Criar um e-mail customizado e aleatório
    ${EMAIL_GERADO}    Criação de e-mail    ${PESSOA.nome}    ${PESSOA.sobrenome}
    Log To Console    ${EMAIL_GERADO}



*** Keywords ***
Criação de e-mail
    [Arguments]    ${NOME}    ${SOBRENOME}
    ${ALEATORIA}    Generate Random String    
    ${EMAIL_DEFINITIVO}    Set Variable    ${NOME}${SOBRENOME}${ALEATORIA}@cursorobot.mayra.com.br
    [Return]    ${EMAIL_DEFINITIVO}
    



