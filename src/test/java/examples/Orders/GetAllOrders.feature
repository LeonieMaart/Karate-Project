Feature: sample karate test script
for help, see: https://github.com/karatelabs/karate/wiki/IDE-Support

Feature: Create Order Data Driven

  Background:
    * url 'https://simple-tool-rental-api.glitch.me'
    * def token = 'Bearer 7bdbf9b04bcadc3d9662feb9dec0159606414996d0aef0379899fc6a48e1585f'
    * def order = '38JSzhDvQBwNQisIRNr7n'


  Scenario: Get all order
    * header Authorization = token
    Given path 'orders'
    When method get
    Then status 200
    * print response
    * def order = response.orderId