*** Settings ***
Library     SeleniumLibrary
Library     DateTime
Library     Screenshot
Library     ../libraries/generator.py

#Shared
Resource    shared/setup_teardown.robot

*** Variables ***
&{config}
...     URL=https://www.facebook.com/
...     Browser=chrome 