*** Settings ***
Library    RequestLibrary
Library    JSONLibrary
Library    Collections
Library    OperatingSystem

Resource    shared/setup_teardown.resource

*** Variables ***
&{geral}
...    URL=http://localhost:3000/api