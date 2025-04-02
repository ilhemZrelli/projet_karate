Feature: booking
  @addBooking
  Scenario: post booking
    Given url 'https://restful-booker.herokuapp.com/'
    And path '/booking'
    And header Accept = 'application/json'
    And request {"firstname":"Pierre","lashttps://restful-booker.herokuapp.com/tname":"Martin","totalprice":150,"depositpaid":true,"bookingdates":{"checkin":"2024-05-01","checkout":"2024-05-05"},"additionalneeds":"Petit dejeuner"}
    When method POST
    Then status 200
    * match response.bookingid != null
  @postBooking
  Scenario: Créer booking
    Given url 'https://reqres.in'
    And path 'api/users/'
    And request {"firstname":"#firstname","lastname":"#lastname","totalprice":#totalprice,"depositpaid":#depositpaid,"bookingdates":{"checkin":"#checkin","checkout":"#checkout"},"additionalneeds":"#additionalneeds"}
    When method POST
    Then status 201
    * def bookingid = response.bookingid
    * def result = { bookingid: bookingid }