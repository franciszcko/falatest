Feature: Searching for TestCafe by Google

  I want to find TestCafe repository by Google search

  Scenario: Searching for falabella by Google
    Given I open Google search page
    When I am typing my search request "falabella" on Google
    Then I press the "enter" key on Google
    Then I want to press in text "falabella.com"