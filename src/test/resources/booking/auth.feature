Feature: booking

  Scenario: authentication 1
    Given url 'https://restful-booker.herokuapp.com/'
    And path '/auth'
    And header Accept = 'application/json'
    And request {"username":"admin","password":"password123"}
    When method POST
    Then status 200
    * match response.token != null
    * match response.token == '#string'
    * print response.token
  @auth
  Scenario: authentication
    Given url 'https://restful-booker.herokuapp.com/'
    And path 'auth'
    And request {"username":"#username","password":"#password"}
    When method POST
    Then status 200
    * match response.token != null
    * def token = response.token
