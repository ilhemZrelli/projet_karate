Feature: booking

  Scenario: post booking with today date
    Given url 'https://restful-booker.herokuapp.com/'
    And path '/booking'
    And header Accept = 'application/json'
    * def today = java.time.LocalDate.now().toString()
    * print today
    * def tomorrow = java.time.LocalDate.now().plusDays(1).toString()
    * print tomorrow
    And request {"firstname":"Pierre","lashttps://restful-booker.herokuapp.com/tname":"Martin","totalprice":150,"depositpaid":true,"bookingdates":{"checkin": "#(today)" ,"checkout":"#(tomorrow)"},"additionalneeds":"Petit dejeuner"}
    When method POST
    Then status 201
    * match response.bookingid != null
    * print response