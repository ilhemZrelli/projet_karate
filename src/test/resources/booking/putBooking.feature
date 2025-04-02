Feature: booking
  Scenario: put booking
    Given url 'https://restful-booker.herokuapp.com/'
    And path '/auth'
    And header Accept = 'application/json'
    And request {"username":"admin","password":"password123"}
    When method POST
    Then status 200
    * def token = response.token
    * def result = { token: token }
    * print token

    Given url 'https://restful-booker.herokuapp.com/'
    * def res = call read('classpath:postBooking.feature/@addBooking')
    And path '/booking/'+
    And header Accept = 'application/json'
    And header Cookie = 'token ='+ token
    And request {"firstname":"Pierre","lashttps://restful-booker.herokuapp.com/tname":"Martin","totalprice":150,"depositpaid":true,"bookingdates":{"checkin":"2024-05-01","checkout":"2024-05-05"},"additionalneeds":"Petit dejeuner"}
    When method PUT
    Then status 200
    * match response.bookingid != null
