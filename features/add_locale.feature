Feature: Add a locale

  Scenario: Successfully adding a new locale
    Given I add a new locale
    When I request that locale
    Then I see that locale 
