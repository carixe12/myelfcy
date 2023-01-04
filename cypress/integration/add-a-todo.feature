Feature: Add a todo
  Scenario Outline: my first elf todos <title>
    Given I have no todos
    And I navigate to the home page
    When I submit "<title>" for my new todo title
    Then I see the following todos:
      | title   | done  |
      | <title> | false |
    And I see that I have " a new todo and Delete"
    Examples:
      | title               |
      | First example todo  |
      | Second example todo |