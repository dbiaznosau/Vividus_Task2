Initial task:
a.	Setup your own project structure (environment properties) 
Useful notes: Please see Lecture 1 – slide 25 and Lecture 2 - slide 7
b.	Create ‘Sign Up’ scenario using page elements steps
i.	Create several users using ‘Examples tables’ 
ii.	Set up some sign up values using expressions (Lecture 2 – slide 28)
c.	Use API for Trello Board creation


Due to some Task 1 limitations the following changes were made to it:
a. No changes
b. Is is impossible to implement 'Sign Up' scenario due to the captcha is asked during the creation of new account.
Thst's why it was changed to the 'Sing In' scenario - after new user is created manually, there is no captcha required for the login process.
c. For some reasons when I try to implement HTTP POST via body method

Given request body: {"key": "8d3a41a6ef8364e2d460bf4b231e43b5",
"token": "f3601d5566ae02229e4decb757f724412d6b550afb0a3955de58ce12f64273eb",
"name": "<tableName>"}
When I send HTTP POST to the relative URL ``

then response is always 401 (unauthorized). I tried to use the same body for some other api-testing services and they worked fine.
So i didn't found any other workaround then to change body to url  

When I send HTTP POST to the relative URL '?key=8d3a41a6ef8364e2d460bf4b231e43b5&token=f3601d5566ae02229e4decb757f724412d6b550afb0a3955de58ce12f64273eb&name=<tableName>'

There also was s requirement to expression to create new users, so I moved this to the Board Creation step - name for a new board is generated using expression.