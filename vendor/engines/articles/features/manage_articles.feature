@articles
Feature: Articles
  In order to have articles on my website
  As an administrator
  I want to manage articles

  Background:
    Given I am a logged in refinery user
    And I have no articles

  @articles-list @list
  Scenario: Articles List
   Given I have articles titled UniqueTitleOne, UniqueTitleTwo
   When I go to the list of articles
   Then I should see "UniqueTitleOne"
   And I should see "UniqueTitleTwo"

  @articles-valid @valid
  Scenario: Create Valid Article
    When I go to the list of articles
    And I follow "Add New Article"
    And I fill in "Judul" with "This is a test of the first string field"
    And I press "Save"
    Then I should see "'This is a test of the first string field' was successfully added."
    And I should have 1 article

  @articles-invalid @invalid
  Scenario: Create Invalid Article (without judul)
    When I go to the list of articles
    And I follow "Add New Article"
    And I press "Save"
    Then I should see "Judul can't be blank"
    And I should have 0 articles

  @articles-edit @edit
  Scenario: Edit Existing Article
    Given I have articles titled "A judul"
    When I go to the list of articles
    And I follow "Edit this article" within ".actions"
    Then I fill in "Judul" with "A different judul"
    And I press "Save"
    Then I should see "'A different judul' was successfully updated."
    And I should be on the list of articles
    And I should not see "A judul"

  @articles-duplicate @duplicate
  Scenario: Create Duplicate Article
    Given I only have articles titled UniqueTitleOne, UniqueTitleTwo
    When I go to the list of articles
    And I follow "Add New Article"
    And I fill in "Judul" with "UniqueTitleTwo"
    And I press "Save"
    Then I should see "There were problems"
    And I should have 2 articles

  @articles-delete @delete
  Scenario: Delete Article
    Given I only have articles titled UniqueTitleOne
    When I go to the list of articles
    And I follow "Remove this article forever"
    Then I should see "'UniqueTitleOne' was successfully removed."
    And I should have 0 articles
 