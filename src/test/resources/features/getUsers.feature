Feature: get users
  Scenario: get all users
    Given url 'https://reqres.in'
    And path '/api/users'
    When method GET
    Then status 200
    Scenario: get page 2
      Given url 'https://reqres.in'
      And path '/api/users?page=2'
      When method GET
      Then status 200
      And page=2
      And response.data.size=6
      * def firstId = response.data[0].id
      * print firstId
      And firstId=7
