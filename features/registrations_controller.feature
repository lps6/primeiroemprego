Feature: User can create a profile via Sign Up

Scenario: User sign up
  Given that I am on the "homepage"
  When I follow Sign up
  Then I should be on the "Sign Up" page
  When I fill in "Nome" with a string
  And I fill in "CPF" with a valid input
  And I select a valid birthdate
  And I fill in "Sobre mim" with a string
  And I fill in "Email" with a string
  And I fill in "Senha" with a valid password
  And I fill in "Confirmar senha" with a valid password
  And I press "Sign Up"
  Then I should be on the "Dashboard"