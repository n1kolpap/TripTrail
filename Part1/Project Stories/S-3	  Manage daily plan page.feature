Feature: Manage daily plan page
 
  Background:
    Given I am logged in as a user
  
  Scenario: View the daily plan
    Given a trip plan exists
    When I click on a trip plan in the dashboard
    And I click a daily plan for a specific day
    Then I should see the activities on a timeline
    
  Scenario: Add activity to the daily plan
    Given I am viewing a daily plan
    When I click on the "+" button
    And I click on an activity
    And I set the start and end time
    And I click on the "save" button
    Then I should see a message "Activity added successfully"
    Then I should see the new activity on the daily plan schedule
    
  Scenario: Cancel the add activity action to the daily plan
    Given I am viewing a daily plan
    When I click on the "+" button
    And I click on an activity
    And I set the start and end time
    And I click on the "discard" button
    Then I should see a message "Changes discarded"
    Then I should not see a new activity on the daily plan schedule
    
  Scenario: Remove activity from the daily plan
    Given I am viewing a daily plan
    When I click on the "trash" button next to the activity
    Then I should see a pop up saying "Are you sure?"
    And I click the button "yes"
    And I should see a message "Activity removed successfully"
    And I should no longer see the activity in the daily plan
    
  Scenario: Cancel the remove action of an activity from the daily plan
    Given I am viewing a daily plan
    When I click on the "trash" button next to the activity
    Then I should see a pop up saying "Are you sure?"
    And I click the button "cancel"
    And I should still see the activity in the daily plan
    
  Scenario: Mark activity as completed
    Given I am viewing a daily plan
    When I click on an empty circle next to the activity
    Then the empty circle becomes a circle with a tick inside
    And I should see a message "Activity completed"
    
  Scenario: Add personal notes to a day of the trip plan
    Given I am viewing a daily plan
    When I press the "notes" button
    Then I should be prompted to write a note
    And I click the "save" button
    And I should see a message "Notes added"
    And I should be able to see the added notes at the top of the daily plan page
