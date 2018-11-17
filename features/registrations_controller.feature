Feature: User can create a profile via Sign Up

Scenario: User sign up
  Given that I am on the "homepage"
  When I follow "Sign up"
  Then I should be on the page "Sign Up" 
  When I fill in "Nome" with "Jon Snow"
  And I fill in "CPF" with "12345678910"
  And I select a valid birthdate
  And I fill in "Sobre mim" with "I know nothing"
  And I fill in "Email" with "jon@nightswatch.wes"
  And I fill in "Senha" with "wildlingpussy"
  And I fill in "Confirmar senha" with "wildlingpussy"
  And I press "Sign Up"
  Then I should be on the "Dashboard"