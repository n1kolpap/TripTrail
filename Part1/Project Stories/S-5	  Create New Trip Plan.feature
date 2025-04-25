Feature: Create New Trip Plan
  
  Background:
    Given I am the user
    And I clicked the "+" button on the main page
    And I am on the create new trip plan page
  
  Scenario: Create new trip plan with activities
    When I added my trip details on the first page:
    | destination | dates |
    And I click "Fill the plan with activities" the button
    And I add a collaborator to the plan if I want
    Then I click the "Start planning" button
    And the system creates a new trip plan with activities
    And I see the daily trip plan page of my new trip plan
    
  Scenario: Create new trip plan without activities
    When I add my trip details on the first page:
    | destination | dates |
    And I do not click "Fill the plan with activities" the button
    And I add a collaborator to the plan if I want
    Then I click the "Start planning" button
    And The system creates a new trip plan without activities
    And I see the daily trip plan page of my new trip plan

  Scenario: Save trip plan
    Given I have finished creating my trip plan
    And I am on the daily trip plan page of my new trip plan
    When I click the "Save" button
    Then The system adds this trip plan to my history list
    And I see the daily trip plan page of my new trip plan
  
  Scenario: Cancel trip plan
    Given I have finished creating my trip plan
    And I am on the daily trip plan page of my new trip plan
    When I click the "Cancel" button
    Then The system deletes this trip plan
    And I see the create new trip plan page to start over
    
  Scenario: Add transportation booking to trip details
    When I click the "+" button
    And I click the "Transportation" button
    And I see the transportation page
    And I add my transportation details
    | origin | transportationMeansToDest | transportationMeansToOrigin |
    Then the system shows transportation options
    And I choose the transportation option I want
    And I click the "Save" button
    
  Scenario: Add accomodation booking to trip details
    When I click the "+" button
    And I click the "Accomodation" button
    And I see the accomodation page
    And I add my accomodation details
    | priceRange | typeOfAccomodation | accomodationFeatures |
    Then the system shows accomodation options with a map
    And I choose the accomodation option I want
    And I click the "Save" button
    
  Scenario: Add budget to trip details
    When I click the "+" button
    And I click the "Budget" button
    And I see the budget page
    And I add my budget trip details
    | budget |
    Then the system adjusts the activities of the trip plan to my budget
    And I click the "Save" button
    
  Scenario: Add trip purpose(s) to trip details
    When I click the "+" button
    And I click the "Purpose" button
    And I see the purpose page
    And I add my one or more trip purposes to trip details
    | tripPurpose |
    Then the system adjusts the activities of the trip plan to my trip purposes
    And I click the "Save" button
    
  Scenario: Add trip interests to trip details
    When I click the "+" button
    And I click the "Interests" button
    And I see the interests page
    And I add my one or more trip interests to trip details
    | tripInterests |
    Then the system adjusts the activities of the trip plan to my trip interests
    And I click the "Save" button
