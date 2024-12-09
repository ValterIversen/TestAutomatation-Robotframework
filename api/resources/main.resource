*** Settings ***
Library    RequestLibrary
Library    JSONLibrary
Library    Collections
Library    OperatingSystem

Resource    shared/setup_teardown.resource

*** Variables ***
&{geral}
...    URL=https://api.open-meteo.com/v1/forecast