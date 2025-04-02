Feature: post new user
  Scenario: add new user
    Given url 'https://reqres.in'
    And path '/api/users'
    And request {"name":"morpheus","job":"leader"}
    When method POST
    Then status 201
    Then print response
    Then response.id != null
    Then response.name == 'morpheus'
    And response.job == 'leader'