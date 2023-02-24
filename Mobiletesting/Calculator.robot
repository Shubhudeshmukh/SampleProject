*** Settings ***
Library    AppiumLibrary
Library    ../Lib/common.py
#Library    ../Lib/comman1.py
Suite Setup    Run Keyword    start_appium
#Suite Setup    run keyword  start_android
Suite Teardown    Run Keyword   stop_appium


*** Variables ***
${number8}    id=com.google.android.calculator:id/digit_8
${number9}    id=com.google.android.calculator:id/digit_9
${plussign}    id=com.google.android.calculator:id/op_add
${equals}    id=com.google.android.calculator:id/eq


*** Test Cases ***
open calculator
    open application    http://localhost:4723/wd/hub    platformName=Android    deviceName=emulator-5554    appPackage=com.google.android.calculator   appActivity=com.android.calculator2.Calculator     automationName=Uiautomator2
    click element    ${number8}
    click element    ${plussign}
    click element    ${number9}
    click element    ${equals}
    wait until page contains    17