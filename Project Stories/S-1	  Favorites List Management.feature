Feature: Favorites List Management
  As a User
  I want to save and manage my favorite Trips
  So I can quickly revisit or share them later

  # R-35 Add to favorites
  Scenario: Add a Trip to favorites
    Given I am viewing a Trip's details
    When I select "Add to Favorites"
    Then the Trip should appear in my Favorites list
    And I should see a confirmation: "Trip added to Favorites"

  # R-23 Manage favorites
  Scenario: Remove a Trip from favorites
    Given my Favorites list contains at least one Trip
    When I click "Remove" next to a Trip
    Then the Trip should no longer appear in my Favorites list
    And I should see a confirmation: "Trip removed"

  Scenario: View empty Favorites list
    Given my Favorites list has no saved Trips
    When I open the Favorites page
    Then I should see: "Your Favorites list is empty"
    And a link to "Explore Suggested Activities"
