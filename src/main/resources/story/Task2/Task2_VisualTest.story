Description: Pages and elements visual checks

GivenStories: preconditions/precondLogin.story

Scenario: Visual test of the home page
When I change context to element located `By.xpath(//div[@id="trello-root"])`
When I compare against baseline with `TrelloHome` ignoring: 
|ELEMENT|
|By.xpath(//*[@class="content-all-boards"])|


Scenario: Visual test of Back to Home elements
When I change context to element located `By.xpath(//*[@data-test-id="header-home-button"])`
When I compare against baseline with `BackToHome` ignoring: 
|ELEMENT|
|By.xpath(//*[@id="popover-boundary"])|


Scenario: Visual test of Boards Menu elements
When I click on element located `By.xpath(//*[@aria-label="Open Boards Menu"])`
When I change context to element located `By.xpath(//*[@data-test-id="header-boards-menu-popover"])`
When I compare against baseline with `BoardsMenu` ignoring: 
|ELEMENT|
|By.xpath(//*[@data-react-beautiful-dnd-droppable="1"])|
When I click on element located `By.xpath(//*[@aria-label="Close"])`

Scenario: Visual test of the Members page
When I click on element located `By.xpath(//div[@class="_1kVIqSPIEnaXjs"])`
When I wait until state of element located `By.xpath(//li//a[@href="/ftm_vividus_dbiaznosau/members"])` is visible
When I click on element located `By.xpath(//li//a[@href="/ftm_vividus_dbiaznosau/members"])`
When I change context to element located `By.xpath(//div[@id="trello-root"])`
When I compare against baseline with `MembersPage` ignoring: 
|ELEMENT|
|By.xpath(//*[@data-test-id="add-members-input"])|

Scenario: Visual test of the Team Table page
When I click on element located `By.xpath(//div[@class="_1kVIqSPIEnaXjs"])`
When I wait until state of element located `By.xpath(//*[@class="content-all-boards"])` is visible
When I click on element located `By.xpath(//li//a[@href="/ftm_vividus_dbiaznosau/tables"])`
When I change context to element located `By.xpath(//div[@id="trello-root"])`
When I compare against baseline with `TeamTablePage` ignoring: 
|ELEMENT|
||

Scenario: Visual test of the Setting page
When I click on element located `By.xpath(//div[@class="_1kVIqSPIEnaXjs"])`
When I wait until state of element located `By.xpath(//*[@class="content-all-boards"])` is visible
When I click on element located `By.xpath(//li//a[@href="/ftm_vividus_dbiaznosau/account"])`
When I change context to element located `By.xpath(//div[@id="trello-root"])`
When I compare against baseline with `Settings` ignoring: 
|ELEMENT|
||