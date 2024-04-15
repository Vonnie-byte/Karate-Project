Feature:Get vote by id
  Background:
    * url baseUrl
    * header Content-Type = 'application/json'
    * header x-api-key = apiKey

  Scenario Outline: Verify
    * def vote = <voteId>
    * def getVoteResponse = call read('genericGetVotesById.feature') {voteId: '#(vote)'}
    * match getVoteResponse.responseStatus == <responseStatus>


    Examples:
      |voteId        |responseStatus|
      |1             |200           |
      |0             |404          |