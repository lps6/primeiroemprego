Feature: Company can create a profile via Sign Up

Scenario: Company sign up
  Given that I am on the "homepage"
  When I follow "Sign up"
  Then I should be on the page "Sign up"
  When I fill in "company_name" with "Nightswatch"
  And I fill in "company_cnpj" with "12345678000199"
  And I fill in "company_description" with "Night gathers, and now my watch begins. It shall not end until my death. I shall take no wife, hold no lands, father no children. I shall wear no crowns and win no glory. I shall live and die at my post. I am the sword in the darkness. I am the watcher on the walls. I am the shield that guards the realms of men. I pledge my life and honor to the Night's Watch, for this night and all the nights to come."
  And I fill in "company_email" with "support@nightswatch.wes"
  And I fill in "company_password" with "fuckallwildlings"
  And I fill in "company_password_confirmation" with "fuckallwildlings"
  And I press "Sign Up"
  Then I should be on the page "Dashboard"