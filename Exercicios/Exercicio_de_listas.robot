*** Settings ***
Documentation    Exercício de criação de LISTAS

*** Variables ***
#Tipo de listas com os meses do ano
@{MESES_DO_ANO}    
...        JANEIRO    
...        FEVEREIRO    
...        MARÇO    
...        ABRIL    
...        MAIO    
...        JUNHO    
...        JULHO
...        AGOSTO    
...        SETEMBRO    
...        OUTUBRO    
...        NOVEMBRO    
...        DEZEMBRO

*** Test Cases ***
Exibição de meses do ano
    Meses do ano


*** Keywords ***
Meses do ano
    Log To Console        ${MESES_DO_ANO[0]}, 
    Log To Console        ${MESES_DO_ANO[1]}, 
    Log To Console        ${MESES_DO_ANO[2]}, 
    Log To Console        ${MESES_DO_ANO[3]}, 
    Log To Console        ${MESES_DO_ANO[4]}, 
    Log To Console        ${MESES_DO_ANO[5]}, 
    Log To Console        ${MESES_DO_ANO[6]}, 
    Log To Console        ${MESES_DO_ANO[7]}, 
    Log To Console        ${MESES_DO_ANO[8]}, 
    Log To Console        ${MESES_DO_ANO[9]}, 
    Log To Console        ${MESES_DO_ANO[10]}, 
    Log To Console        ${MESES_DO_ANO[11]}.
    


