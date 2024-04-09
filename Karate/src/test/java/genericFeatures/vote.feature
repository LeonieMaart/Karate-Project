Feature:sample karate test script
for help, see: https://github.com/karatelabs/karate/wiki/IDE-Support

  Background:
    * url baseUrl
    * def key = key
    * header x-api-key = key
    * header Content-Type = 'application/json'

  Scenario: get all votes
    Given path getVotes
    When method get
    Then status 200

    *print response

