Feature: Share & Collaborate  
  As a User
  I want to share my Trip or invite collaborators  
  So others can view or propose changes to my Trip plan  

  # R-5 - Share Trip (View-Only)  
  Scenario: Share a Trip via public link  
    Given I am viewing my Trip  
    When I generate a "View Only" link  
    Then anyone with the link can see the Trip's destination, dates, and Daily Plan  
    And they can view Activities and Budget  
    But they cannot modify any details  

  Scenario: Share Trip via email (View-Only)  
    Given I am viewing my Trip  
    When I enter an email and send a "View Only" invitation  
    Then the recipient receives the Trip details  
    And they see a message: "You have view-only access"  

  # R-27 - Invite collaborators (Non-Users)  
  Scenario: Invite collaborators to suggest edits via email  
    Given I am editing my Trip  
    When I enter an email and select "Allow Suggestions"  
    Then the recipient receives a link where they can propose new Activities  
    And they can submit Transportation changes  
    And they can suggest Budget adjustments  
    But all changes require my approval  

  Scenario: Revoke collaborator access  
    Given I’ve shared an "Allow Suggestions" link  
    When I revoke access for that link  
    Then the collaborator can no longer submit changes  
    And pending suggestions are preserved  
