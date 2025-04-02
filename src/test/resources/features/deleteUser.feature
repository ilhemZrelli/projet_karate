Feature: delete user
  Scenario: delete user 2
    Given url 'https://reqres.in'
    And path '/api/users/2'
    When method DELETE
    Then status 204
