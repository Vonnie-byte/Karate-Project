Feature:image upload

  Background:
    * url endpoint
    * header Content-Type = 'application /json'
    * header x-api-key = apiKey

  Scenario:Upload an image
   Given path getUpload
    When method get
    Then status 200
    And param limit = 10
    And response[0] != null
