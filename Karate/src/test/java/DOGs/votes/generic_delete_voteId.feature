Feature: sample karate test script
for help, see: https://github.com/karatelabs/karate/wiki/IDE-Support

Feature: Deleting the image of the dog

  Background:
    * url baseUrl
    * header x-api-key = key
    * header Content-Type = 'application/json'

  Scenario:Scenario: delete the voteId of the dog
    * def vteId = voteID
    Given path '/votes/', vteId
    When method delete
    * print 'vote Id was deleted successfully'+ vteId


