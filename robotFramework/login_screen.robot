*** Settings ***
Resource              variables.robot
Resource              keywords.robot
Suite Setup           Open Application    ${URL}    platformName=${PLATFORM_NAME}    deviceName=${DEVICE_NAME}    appPackage=${APP_PACKAGE}         appActivity=${APP_ACTIVITY}        automationName=${AUTOMATION_NAME}

#Suite Teardown    Close Application



*** Test Cases ***
Login With Invalid user
    Login With Invalid Username
Login with wrong password
    Login With Invalid Password
Login with no credentials
    Login With Empty Credentials
Login With Valid Credentials
    Login With Valid Credintials
Validate Calculator ADD Functionality
    Validate ADD
Validate Calculator MULTI Functionality
    Validate Times
Validate Calculator CLEAR Functionality
    Validate Clear
Validate History Button Works
    Validate History Button
Validate Delete Button functionality
    Validate DELETE Button