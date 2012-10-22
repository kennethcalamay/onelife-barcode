Feature: User views registered students
  In order to know who are the current registered students
  As a user
  I want to view a list of registered students
  
  Scenario:
    Given I am at the users' page
    And the following users are registered:
      | First Name | Middle Name | Last Name | Gender | Group | Facilitator     |
      | Kenneth    | Lindsey     | Calamay   | Male   | BBF1  | Person 1        |
      | Jasper     | Irving      | Calamay   | Male   | BBF2  | Person 2        |
    Then I should see the following:
      | Complete Name       | Gender | Group | Facilitator |
      | Calamay, Kenneth L. | Male   | BBF1  | Person 1    |
      | Calamay, Jasper I.  | Male   | BBF2  | Person 2    |
