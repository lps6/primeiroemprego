Feature: User can successfully Sign In

Scenario: User sign in
  Given that I am on the "homepage"
  When I follow "sign in"
  Then I should be on the page "sign in"
  When I fill in "user_email" with "jon@nightswatch.wes"
  And I fill in "user_password" with "wildlingpussy"
  And I press "Sign In"
  Then I should be on the page "Dashboard"