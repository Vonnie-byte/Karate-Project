Feature:Upload an image

  Background:
    * url endpoint
    * header Content-Type = 'multipart/form-data'
    * header x-api-key = apiKey


  Scenario Outline: Verify the functionality of uploading a dog image from Dog Api
   Given path uploadPath
    And multipart file file = <dog_image>
    And multipart field sub_id = <Sub_ID>
    And multipart field breed_ids = <Breed_ID>
    When method post
    Then status <status_code>
    And response[0] != null



    Examples:
      |Sud_ID        | Breed_ID     |                              dog_image                                           |status_code|
      |'my-user-1'     |   '  3 '   |{read: 'upload/whitey.jpeg' , filename: 'whitey.jpeg' , ContentType:'upload/jpeg'}|201         |
      |                |             |{read: 'upload/whitey.jpeg' , filename: 'whitey.jpeg' , ContentType:'upload/jpeg'}|201         |
      |'my-user-1'     |   '  3 '   |{read: 'upload/whitey.jpeg' , filename: 'whitey.jpeg' , ContentType:'upload/jpeg'}|201         |
      |'my-user-1'     |   '  3 '   |{read: 'upload/whitey.jpeg' , filename: 'whitey.jpeg' , ContentType:'upload/jpeg'}|201         |

