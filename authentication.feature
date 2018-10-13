Feature: Login with GetXP account
Description: The purpose of this feature is to test the multiple scenarios for a Login attempt with a GetXP account

Background: User has a registered account
    Given that I nagivate to the 'Sign Up' page
    And I fill in all required fields correctly
    When I click on 'Create Account'
    Then my account should be added to the database

Scenario: User inputs valid username and password
    Given that I am on the 'Sign In' page
    When I enter my username correctly
    And I enter my password correctly
    And I click on the 'Sign In' button
    Then I see a "Login Successful" pop up
    And I am redirected to the 'Dashboard' page

Scenario: User inputs invalid username 
    Given that I am on the 'Sign In' page
    When I enter my password correctly
    But I enter my username incorrectly
    And I click on the 'Sign In' button
    Then I see an "Authentication Failed" pop up
    And I am asked to reenter my credentials 

Scenario: User inputs invalid password
    Given that I am on the 'Sign In' page
    When I enter my username correctly
    But I enter my password incorrectly
    And I click on the 'Sign In' button
    Then I see an "Authentication Failed" pop up
    And I am asked to reenter my credentials

Feature: Login with a Google account
Description: The purpose of this feature is to test the multiple scenarios for a Login attempt with a Google account

Background: User has a Google account registered
    Given that I nagivate to the 'Sign Up' page
    And I choose the 'Sign Up with a Google account' option
    And I fill in all required fields correctly
    When I click on 'Create account'
    Then my account should be added to the database

Scenario: Authentication is successful
    Given that I am on the 'Sign In with Google' page
    When I enter my credentials correctly
    And I click on the 'Sign In' button
    Then I see a "Login Successful" pop up
    And I am redirected to the 'Dashboard' page

Scenario: Authentication is unsuccesful
    Given that I am on the 'Sign In with Google' page
    When I enter my credentials incorrectly
    And I click on the 'Sign In' button
    Then I see an 'Authentication Failed' pop up
    And I am asked to reenter my credentials

Feature: Login with a Facebook account
Description: The purpose of this feature is to test the multiple scenarios for a Login attempt with a Facebook account

Background: User has a Facebook account registered
    Given that I nagivate to the 'Sign Up' page
    And I choose the 'Sign Up with a Facebook account' option
    And I fill in all required fields correctly
    When I click on 'Create account'
    Then my account should be added to the database

Scenario: Authentication is successful
    Given that I am on the 'Sign In with Facebook' page
    When I enter my credentials correctly
    And I click on the 'Sign In' button
    Then I see a "Login Successful" pop up
    And I am redirected to the 'Dashboard' page

Scenario: Authentication is unsuccesful
    Given that I am on the 'Sign In with Facebook' page
    When I enter my credentials incorrectly
    And I click on the 'Sign In' button
    Then I see an 'Authentication Failed' pop up
    And I am asked to reenter my credentials




