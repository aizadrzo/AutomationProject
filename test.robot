*** Settings ***
Library     SeleniumLibrary
Resource    task1.robot
Resource    task2.robot
Resource    task3.robot
Resource    task4.robot
Resource    task5.robot

*** Variable ***
${login_btn}    dt_login_button
${email_field}  name=email
${password_field}   name=password
${login_auth_btn}   name=login

*** Test Cases ***
Open Deriv
    Login   ${my_email}     ${my_pw}
    Switch VRTC
    Buy Rise Contract
    Buy Lower Contract
    Error Relative Barrier
    Multiplier Contract