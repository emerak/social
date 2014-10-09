  Feature:
    A user can log in into the app

  Background:
    Given I am an signed user with email "alejandra@gmail.com" and password "password"

  @javascript
  Scenario Outline:
    Given I am in the log in page
    And I enter valid "<email>" and "<password>" information 
    Then I should see the index page

    Examples:
      | email               | password |
      | alejandra@gmail.com | alejandra|


