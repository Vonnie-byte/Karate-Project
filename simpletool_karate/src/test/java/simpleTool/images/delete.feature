Feature:Delete

  Background:

    * url endpoint
    * header Content-Type = 'application /json'
    * header x-api-key = apiKey

  Scenario Outline: Verify that the image is deleted

    Given path deleteImage, <image_id>
    When method delete
    Then status 204

    Examples:
      |image_id  |
      | BkIEhN3pG|