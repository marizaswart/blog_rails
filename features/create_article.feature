Feature: Create articles
  As a blogger
  In order to share my content with everyone
  I would like to be able to create Articles

  Background:
    Given I visit the landing page
    When I click "new article" link

  Scenario: Successfully create an article [Happy Path]
    And show me the page
    When I fill in "article_title" with "Learning Rails 5"
    And I fill in "article_content" with "Excited about learning a new framework"
    And I click "Create Article" button
    Then I should be on "Learning Rails 5" page
    And I should see "Article was successfully created."
    And I should see "Learning Rails 5"
    And I should see "Excited about learning a new framework"

  Scenario: Blogger doesn't enter a title for the article [Sad Path]
    When I fill in "article_content" with "Excited about learning a new framework"
    And I click "Create Article" button
    Then I should see "Title can't be blank"

  Scenario: Blogger doesn't enter content for the article [Sad Path]
    When I fill in "article_title" with "Learning Rails 5"
    And I click "Create Article" button
    Then I should see "Content can't be blank"