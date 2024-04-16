Feature:Get breed by id
  Background:
    * url baseUrl
    * header Content-Type = 'application/json'
    * header x-api-key = apiKey

  Scenario Outline: Verify
    * def breed = <breedId>
    * def getBreedResponse = call read('genericGetBreedById.feature') {breedId: '#(breed)'}
    * match getBreedResponse.responseStatus == <responseStatus>


    Examples:
      |breedId        |responseStatus|
      |3              |200           |
      |3              |200           |
      |1000           |400           |