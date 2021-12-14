*** Settings ***
Library     SeleniumLibrary

*** Keyword ***
Multiplier Contract
    click element   dt_contract_dropdown
    click element   dc_multipliers_link
    click element   dt_contract_multiplier_item

    element text should be  //*[@class="trade-container__fieldset-info trade-container__fieldset-info--left"]    Stake

    click element   //*[@class="dc-text dc-checkbox__label take_profit-checkbox__label"]
    click element   //*[@class="dc-text dc-checkbox__label stop_loss-checkbox__label"]
    checkbox should not be selected     //*[@class="dc-text dc-checkbox__label"]

    click element   //*[@class="dc-text dc-checkbox__label"]
    checkbox should not be selected     //*[@class="dc-text dc-checkbox__label take_profit-checkbox__label"]
    checkbox should not be selected     //*[@class="dc-text dc-checkbox__label stop_loss-checkbox__label"]


