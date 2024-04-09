Feature: Sample karate test script
for help, see: https://github.com/karatelabs/karate/wiki/IDE-Support

  Background:
    * url baseUrl
    * def key = key

  Scenario: Gets all the breed Id of a dogs
    * def brdId = $breedId
    Given path 'v1/breeds', brdId
    When method get
    Then status 200
