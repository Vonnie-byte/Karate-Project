Feature:Create order

  Background: //This must happen before anything else "before"
    * url 'hhttps://simple-tool-rental-api.glitch.me'
    * header Authorization = 'Bearer db00f8a3e4dd0e07d5c0a3c224abbf97c1d1c3c60be92431d286f4ae161e38b7'

  Scenario Outline: create an order
    * def createAnOrder =
      """
      {


        "toolId": <toolId>,
        "customerName": <customerName>,

      }
      """

    Given path 'orders'
    And request createAnOrder

    When method post
    Then status 201

    * def OrderId = response.orderId
    * print 'created: ' ,OrderId

    Examples:

      |toolId|customerName|
      |4643  |Lehakoe     |
      |1225  |Masentle    |
      |2177  |Sifiso      |
      |1709  |Lerato      |
      |3674  |John        |
