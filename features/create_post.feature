Feature: Create post
	In order to have posts collection
	As a user
	I need to able to create posts

  Scenario: Create new post
    Given I am on the create post page
    When I fill the new post form with valid data
    Then the post should be added to database
    And I should see it on the home page


  Scenario: Create new post with invalid data
    Given I am on the create post page
    When I fill the new post form with invalid data
    Then the post should not be added to database
    And I should not see it on the home page
