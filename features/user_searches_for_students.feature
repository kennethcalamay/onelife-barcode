Feature: User searches for students
  In order to record the attendance of students who left their attendance at
  home, a user wants to search for students by their first name or last name.

  Background:
    Given the following students are registered:
      | First name | Middle name | Last name | Gender | Group | Facilitator |
      | Kenneth    | Lindsey     | Calamay   | Male   | BBF1  | Person 1    |
      | Jasper     | Irving      | Calamay   | Male   | BBF2  | Person 2    |
      | Kenneth    | Farris      | Lindsey   | Male   | BBF1  | Person 2    |

  Scenario: search by first name
    Given I am at the students' list page
    When I search for "Kenneth"
    Then I should see the following:
      | First name | Middle name | Last name | Gender | Group | Facilitator |
      | Kenneth    | Lindsey     | Calamay   | Male   | BBF1  | Person 1    |
      | Kenneth    | Farris      | Lindsey   | Male   | BBF1  | Person 2    |

  Scenario: search by last name
    Given I am at the students' list page
    When I search for "Calamay"
    Then I should see the following:
      | First name | Middle name | Last name | Gender | Group | Facilitator |
      | Kenneth    | Lindsey     | Calamay   | Male   | BBF1  | Person 1    |
      | Jasper     | Irving      | Calamay   | Male   | BBF2  | Person 2    |
