Feature: User adds student
  A user wants to register a not-yet-registered barcode.

  Scenario:
    Given I am at the students' page
    When I scan a not-yet-registered barcode
    Then I should be presented with a form to add new student
    When I fill in the form with valid data
    Then I should see "Student registered successfully"

