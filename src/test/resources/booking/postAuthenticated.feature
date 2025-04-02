Feature: post new booking with token
  Scenario: post booking for authenticated user
    Given url 'https://restful-booker.herokuapp.com/'
    And header Accept = 'application/json'


    * def result = call read('classpath:booking/auth.feature@authentifiaction') {"username"="admin","password":password123"}
    * def token = result.token
    And path 'booking/'
    And request {"firstname":"Ilhem","lastname":"Martin","totalprice":150,"depositpaid":true,"bookingdates":{"checkin":"2024-05-01","checkout":"2024-05-05"},"additionalneeds":"Dinner"}

    When method POST
    Then status 200