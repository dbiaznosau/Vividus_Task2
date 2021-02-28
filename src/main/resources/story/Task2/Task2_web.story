Description: Login to the application and verify User Profile

GivenStories: preconditions/precondLogin.story

Scenario: Verify user profile via email presence check
When I click on element located `By.xpath(//*[@data-test-id="header-member-menu-button"])`
Then the text '<email>' exists
Examples:
|email           |
|nwpi39@gmail.com|
