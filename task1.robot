*** Settings ***
Library     SeleniumLibrary

*** Keyword ***
Login
    [arguments]     ${my_email}     ${my_pw}
    Open Browser    https://app.deriv.com/   chrome
    maximize browser window
    wait until page does not contain element    dt_core_header_acc-info-preloader   60
    Click Element   ${login_btn}
    wait until page contains element    ${email_field}          15
    input text      ${email_field}      ${my_email}
    input text      ${password_field}   ${my_pw}
    click element   ${login_auth_btn}

Switch VRTC
    wait until page does not contain element   dt_core_header_acc-info-preloader   60
    click element   //*[@id="dt_core_account-info_acc-info"]
    click element   dt_core_account-switcher_demo-tab
    click element    //*[contains(@id,"dt_VRTC")]



