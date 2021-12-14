*** Settings ***
Library     SeleniumLibrary

*** Keyword ***
Buy Rise Contract
    reload page
    wait until page does not contain element    //*[@class="chart-container__loader"]   60
    click element   //*[@id="trade"]/div/div[1]/div/div/div[1]/div[1]/div/div[1]/div
    click element   //*[@id="trade"]/div/div[1]/div/div/div[1]/div[1]/div/div[2]/div/div/div[1]/div[2]/div/div[2]
    click element   //*[@id="trade"]/div/div[1]/div/div/div[1]/div[1]/div/div[2]/div/div/div[2]/div[2]/div/div[2]/div[1]/div[2]/div[1]
    wait until page does not contain element    //*[@class="chart-container__loader"]   60