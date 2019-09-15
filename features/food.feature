Feature: Food
    In order to potray or pluralize Food
    As CLI
    I want to be as objective as possible

    Scenario: Broccoli is gross
        When I run `foodie potray Broccoli`
        Then the output should contain "Gross!"

    Scenario: Tomato, or Tomato?
        When I run `foodie pluralize --word Tomato`
        Then the output should contain "Tomatoes"

