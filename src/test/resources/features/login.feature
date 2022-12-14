@Regression @smoke
Feature: Library app login feature
  User Story:
  As a user, I should be able to login with correct credentials to different
  accounts.  And dashboard should be displayed.

  Accounts are: librarian, student, admin

  Background: For the scenarios in the feature file, user is expected to be on login page
    Given user is on the library login page

  @librarian @employee
  Scenario: Login as librarian
    When user enters librarian user name
    And user enters librarian password
    Then user should see dashboard

  @student
  Scenario: Login as student
    When user enters student user name
    And user enters student password
    Then user should see dashboard

  @admin @employee
  Scenario: Login as admin
    When user enters admin user name
    And user enters admin password
    Then user should see dashboard


 #comment