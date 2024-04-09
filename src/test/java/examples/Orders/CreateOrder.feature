Feature:sample karate test script
for help, see: https://github.com/karatelabs/karate/wiki/IDE-Support

Feature: Create Order Data Driven

  Background:
    * url 'https://simple-tool-rental-api.glitch.me'
    * def token = 'Bearer 7bdbf9b04bcadc3d9662feb9dec0159606414996d0aef0379899fc6a48e1585f'
    * def order = '38JSzhDvQBwNQisIRNr7n'

  Scenario Outline: Creating order
    * def CreateOrder =
      """
      {
        "toolId": <ToolID>,
        "customerName": <CustomerName>

      }
      """

    * header Authorization = token
    Given path 'orders'
    And request CreateOrder
    When method post
    Then status 201
    * def order = response.orderId
    #    And match response.status = 201
    * print order

    Examples:
      | ToolID |CustomerName    |
      |4643    |"Leonie"        |
      |1225    |"Moeks"         |

