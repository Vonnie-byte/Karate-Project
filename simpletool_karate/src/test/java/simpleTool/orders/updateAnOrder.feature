Feature:update an order

  Background:
* header Authorization = 'Bearer db00f8a3e4dd0e07d5c0a3c224abbf97c1d1c3c60be92431d286f4ae161e38b7'

  Scenario Outline: update an order
    * def updateAnOrder =
      """
      {

        "customerName": <customerName>,
        "comment": <comment>

      }
      """

    Given url 'https://simple-tool-rental-api.glitch.me'
    And path 'orders'
    And request updateAnOrder

    When method patch
    Then status 404





    Examples:

      |customerName|comment|
      |Khotso      |Updated|