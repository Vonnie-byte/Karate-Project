Feature: Post votes

  Background:
    * url baseUrl
    * header Content-Type = 'application/json'
    * header x-api-key = apiKey

  Scenario Outline: Test that votes are uploaded successfully
    Given path '/votes'
    * def votes =
    """
    {


      "imageId": <imageId>,
      "sub_id" : <sub_id>,
       "value" : <value>

    }
    """
    When method post
    Then status <status_code>
    * def vote = response.id
    * def getVoteResponse = call read('generic_get_Image_id.feature') {voteId: '#(vote)'}
    * match getImageResponse.response status == 200
    * match getImageResponse.response.id == image
    * match getImageResponse.response contains image
    * def deleteImageResponse = call read('generic_delete_ImagesId.feature') {imageID: '#(image)'}
    * match deleteImageResponse.response status == 204
    #        And assert response == null

    Examples:
      |imageId    |sub_id         |value   |status_code|
      |'GAmy2bg8G'| 'my-user-1232'|-1      |201        |
      ||    |{ read: 'Images/dog.jpg', filename: 'dog.jpg', Content-Type: 'multipart/form-data' } |201|
      |'user1'|     |{ read: 'Images/dog.jpg', filename: 'dog.jpg', Content-Type: 'multipart/form-data' } |201|



  Scenario Outline: Test that the vote does not get uploaded
    Given path '/v1/images/upload'
    * def votes =
      """
      {


        "imageId": <imageId>,
        "sub_id" : <sub_id>,
        "value" : <value>

      }
      """
    When method post
    Then status <status_code>

    Examples:
      |imageId    |sub_id         |value   |status_code|
      |'asf2'     | my-user-1134    |0     |400        |




