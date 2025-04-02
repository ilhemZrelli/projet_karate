Feature: delete booking
  Scenario: delete booking 1
    Given url 'https://restful-booker.herokuapp.com/'
    And path '/booking/1'
    When method DELETE
    Then status 403