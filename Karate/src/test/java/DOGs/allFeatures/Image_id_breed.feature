Feature: sample karate test script
for help, see: https://github.com/karatelabs/karate/wiki/IDE-Support


  Background:
    * url baseUrl
    * def key = key
    * header Content-Type = 'application/json'
  Scenario:Getting the image Id of the dog as well as the breed
    Given path 'images/search'
    And param id = <Id>
    And param breed = <breed>
    When method get
    Then status 200
    * match response[0] contains { id: '#(actual-image-id)', breed_id: '#(actual-breed-id)' }
    * print response

