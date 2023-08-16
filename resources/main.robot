*** Settings ***
Library     SeleniumLibrary
Library     DateTime

# Data
Resource    data/geral.robot
Resource    data/dados_de_contato.robot

#Shared
Resource    shared/setup_teardown.robot

# Pages
Resource    pages/booking_page.robot
