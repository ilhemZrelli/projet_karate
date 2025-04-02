Feature: reutiliser scenarios
  eature: Gestion des utilisateurs

  @createUser
  Scenario: Créer un utilisateur
    Given url 'https://reqres.in'
    And path 'api/users/'
    And request { name: '#(name)', job: '#(job)' }
    When method POST
    Then status 201
    * def userId = response.id
    * print 'Utilisateur créé avec ID:', userId
    * def result = { userId: userId }

  @deleteUser
  Scenario: Supprimer un utilisateur
    Given url 'https://reqres.in/api/users' + userId
    When method DELETE
    Then status 204