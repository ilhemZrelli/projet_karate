Feature: post new user from external file
  Scenario: add new user
    Given url 'https://reqres.in'
    And path '/api/users'
    And request read('classpath:user.json')
    When method POST
    Then status 201
    Then print response
    Then response.id != null
    Then response.name == 'Alice'
    And response.job == 'Développeuse'