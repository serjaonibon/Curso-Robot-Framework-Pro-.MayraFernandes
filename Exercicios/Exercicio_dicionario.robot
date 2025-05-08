*** Settings ***
Documentation    Tarefa de dicionario

*** Variables ***

&{DIAS_DO_MES}                janeiro=31
...                            fevereiro=28
...                            março=31
...                            abril=30
...                            maio=31
...                            junho=30
...                            julho=31
...                            agosto=31
...                            setembro=30
...                            outubro=31
...                            novembro=30
...                            dezembro=31



*** Test Cases ***
Caso de teste: Meses do ano de 2025
    Meses do ano de 2025

*** Keywords ***

Meses do ano de 2025
    Log                 O mês de JANEIRO possui ${DIAS_DO_MES}[janeiro] dias.
    Log                 O mês de FEVEREIRO possui ${DIAS_DO_MES}[fevereiro] dias.
    Log                 O mês de MARÇO possui ${DIAS_DO_MES}[março] dias.
    Log                 O mês de ABRIL possui ${DIAS_DO_MES}[abril] dias.
    Log                 O mês de MAIO possui ${DIAS_DO_MES}[maio] dias.
    Log                 O mês de JUNHO possui ${DIAS_DO_MES}[junho] dias.
    Log                 O mês de JULHO possui ${DIAS_DO_MES}[julho] dias.
    Log                 O mês de AGOSTO possui ${DIAS_DO_MES}[agosto] dias.
    Log                 O mês de SETEMBRO possui ${DIAS_DO_MES}[setembro] dias.
    Log                 O mês de OUTUBRO possui ${DIAS_DO_MES}[outubro] dias.
    Log                 O mês de NOVEMBRO possui ${DIAS_DO_MES}[novembro] dias.
    Log                 O mês de DEZEMBRO possui ${DIAS_DO_MES}[dezembro] dias.

