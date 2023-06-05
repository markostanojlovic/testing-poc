*** Settings ***
Documentation     Example using the space separated format.
...    To use operating system, here is the documentation:
...    https://robotframework.org/robotframework/latest/libraries/OperatingSystem.html
Library           OperatingSystem

*** Variables ***
${MESSAGE}        Hello, world!

*** Test Cases ***
Check all directories exist
    [Documentation]    Example test.
    Log    ${MESSAGE}
    Custom keyword dir should exist    ${CURDIR}
    Custom keyword dir should exist    /tmp

File menagement example test
    [Documentation]    Example test for managing file
    Should Be Equal    ${MESSAGE}    Hello, world!
    Create File    test_menu.txt    \# random file content\n# second line
    File Should Exist    test_menu.txt
    File Should Not Be Empty    test_menu.txt

Test case example of executing a shell script 
    ${output} =     Run	    ls -lf | grep test
    Log    ${output}

Test case example of failing shell script 
    ${rc} =	    Run and Return RC   ls -lf | grep notexisting
    # Should Be Equal As Integers	    ${rc}   0
    Should Be Equal As Integers	    ${rc}   1

*** Keywords ***
Custom keyword dir should exist
    [Arguments]    ${path}
    Directory Should Exist    ${path}