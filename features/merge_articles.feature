Feature: Merge Articles
  As a blog administrator
  In order to combine my thoughts with the world
  I want to be able to merge articles in my blog

  Background:
    Given the blog is set up
    And I am logged into the admin panel
    
  Scenario: Successully merge articles    
    Given I am on article page of "Foobar"
    And I have role as "Typo Administrator"
    Then I should see "Merge Articles"
    When I fill in "Article ID" with "1"
    And I press "Merge"
    Then I should see "Lorem" 
    And I should see "Lorem2"

  Scenario: Deny access to page
    Given I am on article page
    And I have role as "Publisher"
    Then I should not see "Merge Articles"


