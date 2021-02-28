Description: Login to the application and verify that username is displayed on the page 

Scenario: Login to the application
Given I am on the main application page
When I login as <email> and <password>
When I wait until the page has the title 'Boards | Trello'
Then the text '<firstName>' exists
Examples:
|email           |password        |firstName             |
|nwpi39@gmail.com|TreLLo_0_testFTM|FTM_Vividus_dbiaznosau|

