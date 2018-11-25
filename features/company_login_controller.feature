Feature: Company can successfully Sign In

Scenario: Company sign in
  Given that I am on the "homepage"
  When I follow "sign in"
  Then I should be on the page "sign in"
  When I press "Empresa?"
  Then I should be on the page "company sign in"
  When I fill in "company_email" with "support@nightswatch.wes"
  And I fill in "user_password" with "fuckallwildlings"
  And I press "Sign In"
  Then I should be on the page "Dashboard"