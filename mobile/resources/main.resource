*** Settings ***
Library     OperatingSystem
Library     AppiumLibrary
Library     ../libraries/generator.py

#Shared
Resource    shared/setup_teardown.robot


*** Variables ***
${PLATFORM_NAME}        Android
${DEVICE_NAME}          emulator-5554
${APP}                  ${CURDIR}/../apk/my-app.apk
${AUTOMATION_NAME}      UiAutomator2

*** Keywords ***
Install APK Before Starting Tests
    Comment    Use adb to install the APK before running any tests
    Run Process    adb    install -r apk/my-app.apk
    
Start application
    Open Application    http://localhost:4723/wd/hub
    ...                 platformName=${PLATFORM_NAME}
    ...                 deviceName=${DEVICE_NAME}
    ...                 app=${APP}
    ...                 automationName=${AUTOMATION_NAME}
    Wait Until Page Contains Element    //android.widget.EditText    30

Close Application
    Close Application