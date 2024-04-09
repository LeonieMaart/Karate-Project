Feature:sample karate test script
for help, see: https://github.com/karatelabs/karate/wiki/IDE-Support

  Background:
    * url baseUrl
    * header x-api-key = key
    * header Content-Type = 'application/json'

  Scenario Outline: Searching for a specific image/Dog
    Given path '/images/search'
    And param id = <Id>
    When method get
    Then status 200
    * match response contains { id: '<Id>', name: '<Name>' }


    Examples:
  | Id |Name          |
  |222 |"Shiba Inu"   |