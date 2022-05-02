*** Settings ***
Library     SeleniumLibrary

*** Test Cases ***
Headless Browser Test
    Open Browser    https://app-release.gigacover.com/sg/     headlesschrome
    Close Browser
