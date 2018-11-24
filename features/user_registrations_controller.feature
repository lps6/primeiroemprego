Feature: User can create a profile via Sign Up

Scenario: User sign up
  Given that I am on the "homepage"
  When I follow "Sign Up"
  Then I should be on the page "Sign Up"
  When I fill in "user_name" with "Jon Snow"
  And I fill in "user_cpf" with "12345678910"
  And I fill in "user_birth_date" with "01011001"
  And I fill in "user_about_me" with "I know nothing"
  And I fill in "user_email" with "jon@nightswatch.wes"
  And I fill in "user_password" with "wildlingpussy"
  And I fill in "user_password_confirmation" with "wildlingpussy"
  And I press "Sign Up"
  Then I should be on the page "Dashboard"