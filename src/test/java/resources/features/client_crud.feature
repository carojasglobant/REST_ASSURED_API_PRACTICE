@active
Feature: Client testing Crud

  Scenario: Get the list of clients
    Given there are registered clients in the system
    When I send a GET request to view all the clients
    Then the response should have a status code of 200
    And validates the response with the client list JSON schema