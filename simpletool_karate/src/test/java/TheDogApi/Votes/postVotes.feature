Feature: Post votes

  Background:
    * url baseUrl
    * header Content-Type = 'application/json'
    * header x-api-key = apiKey

  Scenario Outline: Test that votes are uploaded successfully

    * def votes =
      """
      {


        "image_id": <imageId>,
        "sub_id" : <sub_id>,
        "value" : <value>

      }
      """
    Given path '/votes'
    And request votes
    When method post
    Then status <status_code>
    * def vote = response.id
    * def getVoteResponse = call read('genericGetVotesById.feature') {voteId: '#(vote)'}
    * match getVoteResponse.responseStatus == 200
    * match getVoteResponse.response.id == vote
    #* match getVoteResponse.response contains vote
    * def deleteResponse = call read('genericDelete.feature') {voteId: '#(vote)'}
    * match deleteResponse.responseStatus == 200

    Examples:
      |imageId    |sub_id         |value   |status_code|
      |'GAmy2bg8G'| 'my-user-1232'|-1      |201     |

  Scenario Outline: Test that the vote does not get uploaded
    * def votes =
      """
      {


        "image_id": <imageId>,
        "sub_id" : <sub_id>,
        "value" : <value>

      }
      """
    Given path '/votes'
    And request votes
    When method post
    Then status <status_code>

    Examples:
      |imageId    |sub_id         |value   |status_code|
      |'abcd'     | 1134          |   2      |400    |
