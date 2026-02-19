*** Settings ***
Library    SeleniumLibrary
Resource    ../../testdata/environment_workshop.robot
Resource    ../../keywords/ui/page/homeworkKeywords.robot
Test Teardown    Close All Browsers

*** Test Cases ***
Homework 1: Happy case: Verify registration form with all input
    [Tags]    valid
    Open browser student registration form
    Input and verify firstname
    Input and verify lastname
    Input and verify phone
    Input and verify email
    Select audults
    Click check box
    Click submit application
    Reload Page
    # Capcha
    # Verify message when registeration complete

Homework 2: Unhappy case: Verify registration form with single fault
    [Tags]     invalid
    # Verify registration form with single fault firstname
    Open browser student registration form
    Input and verify lastname
    Input and verify phone
    Input and verify email
    Select audults
    Click check box
    Key Enter
    Verify firstname display error
    Close Browser
    # Verify registration form with single fault lastname
    Open browser student registration form
    Input and verify firstname
    Input and verify phone
    Input and verify email
    Select audults
    Click check box
    Key Enter
    Verify lastname display error
    Close Browser
    # Verify registration form with single fault phone
    Open browser student registration form
    Input and verify firstname
    Input and verify lastname
    Input and verify email
    Select audults
    Click check box
    Key Enter
    Verify phone display error
    Close Browser
    # Verify registration form with single fault email
    Open browser student registration form
    Input and verify firstname
    Input and verify lastname
    Input and verify phone
    Select audults
    Click check box
    Key Enter
    Verify email display error
    Close Browser
    # Verify registration form with single fault audults
    Open browser student registration form
    Input and verify firstname
    Input and verify lastname
    Input and verify phone
    Input and verify email
    Click check box
    Key Enter
    Verify audults select box display error
    Close Browser
    # Verify registration form with single fault confirmation check box
    Open browser student registration form
    Input and verify firstname
    Input and verify lastname
    Input and verify phone
    Input and verify email
    Select audults
    Key Enter
    Verify confirmation check box display error
    Close Browser