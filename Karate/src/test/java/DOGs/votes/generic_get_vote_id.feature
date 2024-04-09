Feature: Sample karate test script
for help, see: https://github.com/karatelabs/karate/wiki/IDE-Support

  Background:
    * url baseUrl
    * header x-api-key = key

  Scenario: Gets all the breed Id of all the dogs
    * def vtId = voteIdAsString
    Given header x-api-key = 'live_Vai9gmBWwbA2mvtn5RF4ZQ4OVoai1gVudThlYcU7aw9SXoQOYt4QwQ6fO9fNQjvS'
    When method GET
    Then status 200

