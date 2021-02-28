Description: Create a table via API

Scenario: Create a table via API

When I send HTTP POST to the relative URL '?key=8d3a41a6ef8364e2d460bf4b231e43b5&token=f3601d5566ae02229e4decb757f724412d6b550afb0a3955de58ce12f64273eb&name=<tableName>'
Then the response code is equal to '200'
Examples:
|tableName|
|#{generate(regexify '[a-z]{2}[A-Z]{3}[0-9]{3}')}|
