'''
TASK 1
### Myntra Automation using Robot Framework

1. Launch the browser (Chrome) and navigate to Myntra https://www.myntra.com/
2. Maximize the browser window for better visibility.
3. Hover the mouse over the Women section in the top navigation menu.
4. Click on the Lehenga Choli category.
5. Once the product listing page is loaded, scroll down to the filter section.
6. Locate and select the Blue or your fav color filter option.
7. Store the name/text of a specific product (e.g., Madhuram Floral Embroidered Choli with Skirt).
8. Print the captured product name in the console.
9. Close the browser.
'''

*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${url}  https://www.myntra.com/

*** Test Cases ***
Myntra Chronicles
    Open Browser  ${url}  chrome
    Maximize Browser Window
    Sleep    2s

    Mouse Over    xpath=//header[@id="desktop-header-cnt"]//descendant::a[@data-index="1"]
    Sleep    2s

    Click Element    xpath=//a[text()="Lehenga Cholis"]
    
    Scroll Element Into View    xpath=//div[@class="vertical-filters-filters"]//descendant::span[text()="Discount Range"]
    Sleep    2s

    Click Element    xpath=//input[@value="Blue"]//following-sibling::div[@class="common-checkboxIndicator"]
    Sleep    5s

    ${details}=  Get Text    xpath=//li[@id="32036239"]/descendant::h4[1]
    Log To Console    ${details}
    Sleep    2s

    Close Browser