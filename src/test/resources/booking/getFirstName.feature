Feature: get booking
  Scenario: get firstname
    Given url 'https://restful-booker.herokuapp.com/'
    And path '/booking/1'
    And header Accept = 'application/json'
    When method GET
    Then status 200
    * match response.firstname != null
    * print response.firstname
