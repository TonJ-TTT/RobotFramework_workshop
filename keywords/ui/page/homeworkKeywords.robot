*** Setting ***
Resource    ../../../keywords/ui/common/commonKeywords.robot
Resource    ../../../testdata/environment_workshop.robot

*** Keywords ***
###### Homework 1: Happy case: Verify registration form with all input
Open browser student registration form
    Open Browser    ${WEB_URL}    ${WEB_BROWSER}
    Maximize Browser Window
    Sleep    2

Input and verify firstname
    Scroll Element Into View   //*[@id='input_comp-lt33fcq41']
    Wait Until Element Is Visible    //*[@id='input_comp-lt33fcq41']
    Input text    //*[@id='input_comp-lt33fcq41']   ${Input_firstname}
    ${firstname}    Get Value    //*[@id='input_comp-lt33fcq41']
    Should Be Equal    ${firstname}    ${Input_firstname}

Input and verify lastname
    Scroll Element Into View   //*[@id='input_comp-lt33fcs1']
    wait Until Element Is Visible    //*[@id='input_comp-lt33fcs1']
    Input text    //*[@id='input_comp-lt33fcs1']    ${Input_lastname}
    ${lastname}    Get Value    //*[@id='input_comp-lt33fcs1']
    Should Be Equal    ${lastname}    ${Input_lastname}

Input and verify phone
    Scroll Element Into View   //*[@id='input_comp-lt33fcsi1']
    Wait Until Element Is Visible    //*[@id='input_comp-lt33fcsi1']
    Input text    //*[@id='input_comp-lt33fcsi1']    ${Input_phone}
    ${phone}    Get Value    //*[@id='input_comp-lt33fcsi1']
    Should Be Equal    ${phone}    ${Input_phone}

Input and verify email
    Scroll Element Into View   //*[@id='input_comp-lt33fcsf1']
    Wait Until Element Is Visible    //*[@id='input_comp-lt33fcsf1']
    Input text    //*[@id='input_comp-lt33fcsf1']    ${Input_email}
    ${email}    Get Value    //*[@id='input_comp-lt33fcsf1']
    Should Be Equal    ${email}    ${Input_email}

Select audults
    Scroll Element Into View   //*[@id='collection_comp-lt33fcsl1']
    Wait Until Element Is Visible    //*[@id='collection_comp-lt33fcsl1']
    Click Element  //*[@id='collection_comp-lt33fcsl1']
    #Click select
    Scroll Element Into View   //*[@id="menuitem-0"]
    Wait Until Element Is Visible    //*[@id='menuitem-0']
    Click Element  //*[@id='menuitem-0']

Click check box
    Scroll Element Into View   //*[@id='comp-ltubl84u']
    Click Element  //*[@id='comp-ltubl84u']

Click submit application
    Scroll Element Into View   //*[@id='comp-lt33fctj']
    Click Element  //*[@id='comp-lt33fctj']

Verify message when registeration complete
    Scroll Element Into View   //*[@id="comp-ltvkcimc"]/p/span/span
    Wait Until Element Is Visible    //*[@id="comp-ltvkcimc"]/p/span/span
    Wait Until Element Contains     //*[@id="comp-ltvkcimc"]/p/span/span   ${Submit_message}

############# Verify registration form with single fault #############

Key Enter
    Press Keys    None    ENTER

Verify firstname display error
    Wait Until Element Is Visible    //*[@id='input_comp-lt33fcq41' and @aria-invalid="true"]

Verify lastname display error
    Wait Until Element Is Visible    //*[@id='input_comp-lt33fcs1' and @aria-invalid="true"]

Verify phone display error
    Wait Until Element Is Visible    //*[@id='input_comp-lt33fcsi1' and @aria-invalid="true"]

Verify email display error
    Wait Until Element Is Visible    //*[@id="input_comp-lt33fcsf1" and @aria-invalid="true"]

Verify audults select box display error
    Scroll Element Into View   //*[@id='collection_comp-lt33fcsl1' and @aria-invalid="true"]
    Wait Until Element Is Visible    //*[@id="collection_comp-lt33fcsl1" and @aria-invalid="true"]

Verify confirmation check box display error
    Scroll Element Into View   //*[@id="comp-ltubl84u"]/input
    Wait Until Element Is Visible    //*[@id="comp-ltubl84u" and @aria-invalid="true"]/input 