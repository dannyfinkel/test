Feature: Sign Up

  As a user
  I want to sign up to Sports195
  So I can have access to all its member features

  Scenario: Verify Thank You Page after Account Creation
    Given I am on the HomePage
    When I go to Sign Up Page
    And I fill out the sign up form
    Then I should be taken to Thank You Page