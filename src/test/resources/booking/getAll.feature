Feature: booking
  Scenario: get all bookings
    Given url 'https://restful-booker.herokuapp.com/'
    And path '/booking'
    When method GET
    Then status 200
    * match response != null
