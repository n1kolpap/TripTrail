 Feature: Export trip plan as PDF
   
   Background: 
     Given I am logged in as user
   
   Scenario: Export trip plan as a PDF
     Given I am viewing a daily plan
     When I click on the "export" button
     Then I should be given an option to save the PDF file on my phone
     And I click the "save" button
     And I should see a message saying "PDF file saved successfully"
    
   Scenario: Cancel the export trip plan as a PDF action
     Given I am viewing a daily plan
     When I click on the "export" button
     Then I should be given an option to save the PDF file on my phone
     And I click the "cancel" button
     And I should see a message saying "Exporting cancelled"
