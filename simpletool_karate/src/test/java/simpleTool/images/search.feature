Feature: Search Dog Images

  Background:
    * url endpoint
    * header x-api-key = apiKey


Scenario Outline: Search for dog images using the Dog API


  Given path searchPath
    And param id = <Id>
    When method get
    Then status 200
  * match response contains { id: '<Id>', name: '<Name>', bred_for: '<Bred_for>', breed_group: '<Breed_group>', life_span: '<Life_span>', temperament: '<Temperament>', reference_image_id: '<Reference_image_id>' }

Examples:
  |Id     |   name            |  bred_for             | breed_group| life_span      | temperament                                                   |          reference_image_id|
  |   32  |  Bearded Collie   |   Sheep herding       |  Herding   |  12 - 14 years |   "Self-confidence, Hardy, Lively, Alert, Intelligent, Active |   A09F4c1qP                         |
