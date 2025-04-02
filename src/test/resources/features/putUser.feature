Feature: put user
  Scenario: put user
    Given url 'https://reqres.in'
    And path '/api/users/2'
    And request {"name":"morpheus","job":"zion resident"}
    When method PUT
    Then status 200
    Then print response
    Then response.id == 2
    Then response.name == 'morpheus'
    And response.job == 'zion resident'