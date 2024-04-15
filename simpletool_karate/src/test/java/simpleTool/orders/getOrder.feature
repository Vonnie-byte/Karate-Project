Feature:

  Background:

    * url 'https://simple-tool-rental-api.glitch.me'
     * header Authorization = 'Bearer db00f8a3e4dd0e07d5c0a3c224abbf97c1d1c3c60be92431d286f4ae161e38b7'

  Scenario:get all orders
    Given path 'orders'
    When method get
    Then status 200
  * def order = response[0].orderId
    *call read('singleOrder.feature') order




