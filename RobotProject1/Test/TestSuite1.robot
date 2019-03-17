*** Settings ***
Library            SeleniumLibrary    

Suite Setup    Log     I am inside Test Suite Setup
Suite Teardown    Log    I am inside Test Suite Teardown
Test Setup    Log    I am inside Test Setup
Test Teardown    Log    I am inside Test Teardown                

Default Tags    Sanity

*** Variable ***
${url}             https://opensource-demo.orangehrmlive.com/
@{credentials}     Admin    admin123
&{logindata}       username=Admin    password=admin123
*** Test Cases ***
MyFirstTest
        [Tags]    Smoke
        Log         Hello World...
        
MySecondTest
        Log         I am in My Second Test
    
    
        
MyThirdTest
        Log         I am in My Third Test
# FirstSeleniumTest
    # Open Browser    https:google.com    chrome
    # Set Browser Implicit Wait    5
    # Input Text      name=q    Automation Step by Step
    # Press Keys      name=q    ENTER
    # #Click Button    name=btnK
    # Sleep           2
    # Close All Browsers
    # Log             Test Completed
    
# SampleLoginTest
    # [Documentation]    This is a Sample Login Test  
    # Open Browser       ${url}    chrome
    # Set Browser Implicit Wait    5
    # LoginKW
    # Click Element      id=welcome    
    # Click Element      link=Logout        
    # Sleep              2
    # Close All Browsers
    # Log                SampleLoginTest Completed  
    # Log                This test was executed by %{username} on %{os}      


    
    
*** Keyword ***
LoginKw
    Input Text         id=txtUsername    @{credentials}[0]
    Input Password     id=txtPassword    @{credentials}[1]
    #Input Text        id=txtUsername    &{logindata}[username]
    #Input Password    id=txtPassword    &{logindata}[password]
    Press Keys         id=txtPassword    ENTER