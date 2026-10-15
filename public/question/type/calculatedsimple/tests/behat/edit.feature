@qtype @qtype_calculatedsimple
Feature: Test editing a Calculated simple question
  As a teacher
  In order to update calculated simple questions
  I need to edit them and ensure the editing interface meets accessibility standards

  Background:
    Given the following "users" exist:
      | username |
      | teacher  |
    And the following "courses" exist:
      | fullname | shortname | category |
      | Course 1 | C1        | 0        |
    And the following "course enrolments" exist:
      | user    | course | role           |
      | teacher | C1     | editingteacher |
    And the following "question categories" exist:
      | contextlevel | reference | name           |
      | Course       | C1        | Test questions |
    And the following "questions" exist:
      | questioncategory | qtype            | name                          | template        |
      | Test questions   | calculatedsimple | Calculated simple for editing | sumwithvariants |

  @javascript @accessibility
  Scenario: Edit a Calculated simple question and check accessibility
    When I am on the "Calculated simple for editing" "core_question > edit" page logged in as teacher
    Then the "#region-main" "css_element" should meet accessibility standards
