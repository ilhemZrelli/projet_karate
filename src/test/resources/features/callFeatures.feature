Feature: call secenarios
  Scenario: call post
    Given url 'https://reqres.in'
    And path 'api/users/'
    * def name = 'John Doe'

    * def result = call read('classpath:features/defineScenarios.feature@createUser') { name: 'Jane Doe', email: 'jane.doe@example.com' }
    And request result
    When method POST
    Then status 201
    * def userId = response.id
    * print 'User created with ID:'

    Scenario: delete
      Given url 'https://reqres.in'
      And path 'api/users/'
      * def result = call read('classpath:features/defineScenarios.feature@deleteUser'){ userId: userId }
      And request result
      When method DELETE
      Then status 204

