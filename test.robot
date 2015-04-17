*** Settings ***

Variables    variables.py

*** Test Cases ***

Without Calling Keyword
    Should Be Equal    ${MY_THING}    ${1}

After Calling Keyword
    My Keyword With My Thing
    Should Be Equal    ${MY_THING}    ${1}

*** Keywords ***


My Keyword With My Thing
    [Arguments]    ${my_thing}=2
    Log    $\{my_thing} is ${my_thing}
