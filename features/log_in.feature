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
      | alejandra@gmail.com | password|

  Scenario Outline: I can tweet
	Given I am in the log in page
	And I enter valid "alejandra@gmail.com" and "password" information 
	Given I am in the index page
	And I write I tweet with the message "ola ke ase"
	Then I can see my message "<message>"

	Examples:
	  |message|   
	  |ola ke ase|
	  |mensaje 1| 
