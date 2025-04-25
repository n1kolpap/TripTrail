  Feature: Reviews Section
    The users can add reviews to share their experiences with other 
    users. They can post reviews about trip plans and activities
    
    Background:
      Given I am logged in as a user
      And that I have clicked the "Review" tab
    
    Scenario: Post a review about an activity
      And I choose the activities tab
      When I fill in the required fields:
      | Activity marked as complete | Required
      | Text                        | Required
      | Pictures                    | Optional
      And I click the "post" button
      Then I should see a message saying "Activity review posted successfully"
    
    Scenario: Post a review about a trip plan
      And I choose the trip plans tab
      When I fill in the required fields:
      | Trip plan                   | Required
      | Text                        | Required
      | Pictures                    | Optional
      And I click the "post" button
      Then I should see a message saying "Trip plan review posted successfully"     
      
    Scenario: Required input not provided for activity review
      And I choose the activities tab
      When I do not fill in the required fields:
      | Activity marked as complete | Required
      | Text                        | Required
      | Pictures                    | Optional
      And I click the "post" button
      Then I should see a message saying "Failed to post activity review"
    
    Scenario: Required input not provided for trip plan review
      And I choose the trip plans tab
      When I do not fill in the required fields:
      | Trip plan                   | Required
      | Text                        | Required
      | Pictures                    | Optional
      And I click the "post" button
      Then I should see a message saying "Failed to post trip plan review"
