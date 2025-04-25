Feature: AI Assistant Chat Interaction

Background: 
  Given I am the user
  And I am on the trip daily plan screen
  And I have already created a trip
  And the "AI Assistant" button is visible

Scenario: Open the AI chat interface
  When I click on the "AI Assistant" button
  Then the chat interface opens
  And I see a welcome message
  And I should be able to type my question in the input field
  And I should also be able to click the microphone icon to ask my question using voice

Scenario: Ask a question via text
  When I type a question
  And I click "Send"
  Then I receive activity suggestions from the AI
  And I can scroll through the results
  And I can continue chatting if I want

Scenario: Add a suggested activity to the daily plan
  Given I have received activity suggestions from the AI Assistant
  When I click on "Add to Plan" on one of the suggestions
  Then I should be able to select the day I want to add it to
  And the selected activity should appear in my daily plan
  And I should see a confirmation message saying "Activity added successfully to your plan"

Scenario: The AI Assistant doesn't understand the user's input
  Given I have opened the AI Chat interface
  When I send a question that is unclear or unrelated to my trip
  Then the assistant replies "Sorry, I didn’t understand. Please try again."
  And I should be able to type and submit a new question
  
Scenario: No suggestions available
  When I ask the AI Assistant for activity suggestions
  And no results are found based on my destination or filters
  Then I should see a message saying "No suggestions found for this destination. Try adjusting your trip details."
