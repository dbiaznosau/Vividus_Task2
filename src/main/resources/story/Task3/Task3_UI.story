Description: Check some UI elements using nested steps

GivenStories: preconditions/precondLogin.story

Scenario: Check User menu (close and open)
When I find >= `1` elements by `By.xpath(//li//ul[@class="_1T7jXM3PAP_MoF"])` and for each element do
|step|
|When I click on element located `By.xpath(//*[@data-test-id="home-team-tab-name"])`|
|When I wait until state of element located `By.xpath(//li//ul[@class="_1T7jXM3PAP_MoF"])` is not visible|
|When I reset context|
|When I click on element located `By.xpath(//*[@data-test-id="home-team-tab-name"])`|
|When I wait until state of element located `By.xpath(//li//ul[@class="_1T7jXM3PAP_MoF"])` is visible|

Scenario: Check Boards menu (open and close)
When I find >= `1` elements by `By.xpath(//*[@aria-label="Open Boards Menu"])` and for each element do
|step|
|When I click on element located `By.xpath(//*[@aria-label="Open Boards Menu"])`|
|When I wait until state of element located `By.xpath(//*[@data-test-id="header-boards-menu-popover"])` is visible|
|When I click on element located `By.xpath(//*[@aria-label="Close"])`|
|When I wait until state of element located `By.xpath(//*[@data-test-id="header-boards-menu-popover"])` is not visible|

Scenario: Check Atlassian Menu (open, check elements by text, close)
When I find >= `1` elements by `By.xpath(//button[@data-test-id="atlassian-app-switcher"])` and for each element do
|step|
|When I click on element located `By.xpath(//button[@data-test-id="atlassian-app-switcher"])`|
|When I wait until state of element located `By.xpath(//section[@data-test-id="atlassian-app-switcher"])` is visible|
|When I change context to element located `By.xpath(//section[@data-test-id="atlassian-app-switcher"])`|
|Then the text 'Trello' exists|
|Then the text 'Confluence' exists|
|Then the text 'Jira Software' exists|
|When I click on element located `By.xpath(//button[@data-test-id="popover-close"])`|
|When I wait until state of element located `By.xpath(//section[@data-test-id="atlassian-app-switcher"])` is not visible|

Scenario: Check Create Board Menu (open, check buttons by text, close)
When I find >= `1` elements by `By.xpath(//*[@aria-label="Create Board or Team"])` and for each element do
|step|
|When I click on element located `By.xpath(//*[@aria-label="Create Board or Team"])`|
|When I wait until state of element located `By.xpath(//section[@data-test-id="header-create-menu-popover"])` is visible|
|When I change context to element located `By.xpath(//section[@data-test-id="header-create-menu-popover"])`|
|Then field located `By.xpath(//button[contains(., "Create board")])` exists|
|Then field located `By.xpath(//button[contains(., "Start with a template")])` exists|
|Then field located `By.xpath(//button[contains(., "Create team")])` exists|
|Then field located `By.xpath(//button[contains(., "Create business team")])` exists|
|When I click on element located `By.xpath(//button[@data-test-id="popover-close"])`|
|When I wait until state of element located `By.xpath(//section[@data-test-id="header-create-menu-popover"])` is not visible|

