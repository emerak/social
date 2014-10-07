  Feature:
    A user can log in into the app

  Background:
    Given I am an signed user

  Scenario Outline:
    Given I am in the log in page
    And I enter valid "<username>" and "<password>" information 
    Then I should see the index page

    Examples:
      | username  | password |
      | alejandra | alejandra|


