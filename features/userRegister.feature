 #CLICKING ON SIGN UP BUTTON
 Feature: "Sign Up" button test
 
 Scenario: User clicks on "Sign Up"
    Given that I am on the home page
    When I click on "Sign Up"
    Then I am redirected to the "Sign Up" page
 
 #GETXP ACCOUNT
 Feature: Create a GetXP account
 Description: The purpose of this feature is to test the multiple Sign Up scenarios

Scenario: User inputs valid information for every required field
    Given that I am on the "Sign Up" page
    When I enter a valid username
    And I enter a valid password
    And I enter a valid CPF
    And I enter a valid age
    And I enter my graduation
    And I click on "Create Account"
    Then I see a "Account Created" pop Up
    And I am redirected to the 'Dashboard' page

Scenario: User inputs invalid username
    Given that I am on the "Sign Up" page
    When I enter an invalid username
    And I click on "Create Account"
    Then I see an "Invalid Username" pop up
    And I am asked to reenter my username

Scenario: User inputs invalid password
    Given that I am on the "Sign Up" page
    When I enter an invalid password
    And I click on "Create Account"
    Then I see an "Invalid Passsword" pop up
    And I am asked to reenter my password

Scenario: User inputs invalid CPF
    Given that I am on the "Sign Up" page
    When I enter an invalid CPF
    And I click on "Create Account"
    Then I see an "Invalid CPF" pop up
    And I am asked to reenter my CPF

Scenario: User inputs invalid age
    Given that I am on the "Sign Up" page
    When I enter an invalid age
    And I click on "Create Account"
    Then I see an "Invalid Age" pop up
    And I am asked to reenter my age

 

