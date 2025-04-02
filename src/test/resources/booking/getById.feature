Feature: get booking
  Scenario: get booking by id
    Given url 'https://restful-booker.herokuapp.com/'
    And path '/booking/1'
    And header Accept = 'application/json'
    When method GET
    Then status 200
    * match response != null
    * match response.firstname != null
    * match response.lastname != null
    * match response.totalprice != null