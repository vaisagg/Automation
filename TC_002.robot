*** Settings ***
Library  SeleniumLibrary
Resource  ../Resources/Resources1.robot

default tags  DFLT
force tags  FRCE
Library  ../UserDefinedKeywords/Locators.py

*** Variables ***
${Browser}  Chrome
${URL}  http://www.facebook.com
${username}  vaisag
*** Test Cases ***

TC_Testcase
    Open Browser  ${URL}  ${Browser}
    Maximize Browser Window
    ${usernameCtrl}=  Read Element Locator  Login.username_textbox_name
    log to console  ${usernameCtrl}
    Input Text  ${usernameCtrl}  ${username}


*** Keywords ***

Read Element Locator
    [arguments]  ${jpth}
    ${control}=  read_locator_from_json  ${jpth}
    [return]  ${control}


#TC_002_Pass
#    [tags]  sanity
#    [setup]  Start Browser and Maximize  ${URL}  ${Browser}
#    [teardown]  Close Browser and exit
#    press keys  name:pass  1234




*** keywords ***
Enter DOB
    [arguments]  ${day}  ${mon}  ${year}
    Select From List by Index  name:birthday_day  ${day}
    Select From List by Value  name:birthday_month  ${mon}
    Select From List by Label  name:birthday_year  ${year}

