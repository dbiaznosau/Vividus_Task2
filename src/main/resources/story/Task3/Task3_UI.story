Description: Check some UI elements using nested steps

GivenStories: preconditions/precondLogin.story

Scenario: Check User menu
When I find >= `1` elements by `By.xpath(//li//ul[@class="_1T7jXM3PAP_MoF"])` and for each element do
|step|
|When I click on element located `By.xpath(//*[@data-test-id="home-team-tab-name"])`|
|When I wait until element located `By.xpath(//li//ul[@class="_1T7jXM3PAP_MoF"])` is stale|
|When I click on element located `By.xpath(//*[@data-test-id="home-team-tab-name"])`|
|When I wait until state of element located `By.xpath(//li//ul[@class="_1T7jXM3PAP_MoF"])` is visible|