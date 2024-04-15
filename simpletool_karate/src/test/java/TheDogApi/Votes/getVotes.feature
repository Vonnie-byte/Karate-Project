Feature:Get Breeds

  Background:
    * url baseUrl
    * header Content-Type = 'application/json'
    * header x-api-key = apiKey

  Scenario:Get the breeds of the Dog Api
    Given path '/votes'
    * param limit = 10
    When method get
    Then status 200
