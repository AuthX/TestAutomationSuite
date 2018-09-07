Feature: Search Engines

      # Run in -p dev
  Scenario: Open Google
    Given I Open google
    Then I should see the Google Logo

    # Run in -p qa
  Scenario: Navigate to Yahoo
    Given I open Yahoo's Site
    Then I should see the Yahoo Logo