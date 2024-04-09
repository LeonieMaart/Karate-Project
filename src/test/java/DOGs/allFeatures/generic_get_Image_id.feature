Feature: Sample karate test script
for help, see: https://github.com/karatelabs/karate/wiki/IDE-Support

  Background:
    * url baseUrl
    * def key = key

  Scenario: Get the id of the DOGs
    * def imgId = $imageID
    Given path 'v1/images/'+ imgId
    When method get
