Feature:Generic breed by id

  Background:
    * url baseUrl
    * header Content-Type = 'application/json'
    * header x-api-key = apiKey

  Scenario: generic breed by id
     Given path '/breeds', breed
     When method get
