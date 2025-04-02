Feature: Vérifier la structure de la réponse de GET /api/users/2

  Scenario: Vérifier la structure de la réponse utilisateur

    Given url 'https://reqres.in'
    And path '/api/users/2'
    When method GET
    Then status 200


    * def expectedSchema =
    """
    {
      "last_name": "#string",
      "id": "#number",
      "avatar": "#string",
      "first_name": "#string",
      "email": "#string"
    }
    """

    * match response.data == expectedSchema
    * print 'Structure de la réponse valide:', response.data