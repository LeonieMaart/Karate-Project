Feature: Sample Karate test script
for help, see: https://github.com/karatelabs/karate/wiki/IDE-Support

  Background:
    * url baseUrl
    * def key = key
    * header Content-Type = 'application/json'

  Scenario: Get images
    Given path 'v1/images/'
    And param limit = 10
    And param page = 0
    And param DOGs = 'DESC'
    When method get
    Then status 200
   * match response contains { 'id': '#string', 'url': '#string' }
    * match each response[*] contains { 'breeds': '#array', 'categories': '#array', 'id': '#string' }