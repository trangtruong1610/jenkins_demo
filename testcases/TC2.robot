*** Settings ***
Library     SeleniumLibrary

*** Test Cases ***
Headless Browser Test
    Open Browser    https://google.com     headlesschrome
    Close Browser
