*** Settings ***
Library     SeleniumLibrary

*** Test cases ***
Headless Browser Test
    Open Browser    https://google.com     headlesschrome
    Close Browser
