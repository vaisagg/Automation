*** Settings ***
Resource  ../Resources/Resources1.robot

*** Variables ***
${Browser}  Chrome
${URL}  http://www.facebook.com


*** Test Cases ***
Testcase_BDD
    Given Start Browser and Maximize  ${URL}  ${Browser}
    When Combine Words   vaisag  genesan
    Then Create a folder  abcd
