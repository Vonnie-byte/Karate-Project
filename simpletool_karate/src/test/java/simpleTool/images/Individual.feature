Feature:Search individual image by Id

  Background:
   * url endpoint
    * header x-api-key = apiKey

  Scenario: Search an individual dog image using the Dog Api
    Given path searchInd
    When method get
    Then status 200
    And match response[0].id != null
    * call read(search.feature)


