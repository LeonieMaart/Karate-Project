Feature: sample karate test script
for help, see: https://github.com/karatelabs/karate/wiki/IDE-Support

Feature: Create Order Data Driven

  Background:
    * url 'https://simple-tool-rental-api.glitch.me'
    * def token = 'Bearer 7bdbf9b04bcadc3d9662feb9dec0159606414996d0aef0379899fc6a48e1585f'

  Scenario: Get single order
    * call read('CreateOrder.feature')
    * def order = 'hLRw91jtu7PZ1Ced-OFAh'
    * header Authorization = token
    * param orderId = order
    Given path 'orders',order
    When method get
    Then status 200
    * print 'Order details:', response