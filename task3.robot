*** Settings ***
Library     SeleniumLibrary

*** Keyword ***
Buy Lower Contract
    wait until page does not contain element    //*[@class="chart-container__loader"]   60
    click element   //*[@class="cq-symbol-select-btn"]
    click element   //*[@class="ic-icon ic-forex"]
    click element   //*[@class="ic-frx ic-frxAUDUSD"]
    wait until page does not contain element    //*[@class="chart-container__loader"]   60
    click element   dt_contract_dropdown
    click element   dt_contract_high_low_item
    wait until page does not contain element    //*[@class="chart-container__loader"]   60
    click element   dt_simple_toggle
    press keys     name=duration   BACKSPACE
    input text     name=duration    2
    click element   dc_payout_toggle_item
    press keys      dt_amount_input     BACKSPACE
    input text      dt_amount_input     15.50
    wait until element is enabled   dt_purchase_put_button
    click element   dt_purchase_put_button