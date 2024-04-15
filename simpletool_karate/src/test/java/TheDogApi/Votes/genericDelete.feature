Feature:Delete by vote id

  Background:
    * url baseUrl
    * header x-api-key = apiKey
    * header Content-Type = 'application/json'

  Scenario:Scenario: delete the voteId
    Given path 'votes/',voteId
    When method delete
