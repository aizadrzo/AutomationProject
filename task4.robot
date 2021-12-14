*** Settings ***
Library     SeleniumLibrary

*** Keyword ***
Error Relative Barrier
    wait until page does not contain element    //*[@class="chart-container__loader"]   60
    click element   //*[@class="cq-symbol-select-btn"]
    click element   //*[@class="ic-icon ic-forex"]
    click element   //*[@class="ic-frx ic-frxAUDUSD"]
    wait until page does not contain element    //*[@class="chart-container__loader"]   60
    click element   dt_contract_dropdown
    click element   dt_contract_high_low_item
    wait until page does not contain element    //*[@class="chart-container__loader"]   60
    click element   dc_payout_toggle_item
    press keys      dt_barrier_1_input  BACKSPACE
    input text      dt_barrier_1_input     -0.1
    element should be disabled   dt_purchase_put_button