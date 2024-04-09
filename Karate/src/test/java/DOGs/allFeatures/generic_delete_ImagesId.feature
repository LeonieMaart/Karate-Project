Feature: sample karate test script
for help, see: https://github.com/karatelabs/karate/wiki/IDE-Support

Feature: Deleting the image of the dog

  Background:
    * url baseUrl
    * header x-api-key = key
    * header Content-Type = 'application/json'

  Scenario:Scenario: delete the imageId of the dog
    * def imgId = $imageID
    Given path 'images/'+imgId
    When method delete


