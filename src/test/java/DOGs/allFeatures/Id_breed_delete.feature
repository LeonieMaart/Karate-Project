Feature: sample karate test script
for help, see: https://github.com/karatelabs/karate/wiki/IDE-Support

Feature: Deleting the image of the dog

  Background:
    * url baseUrl
    * def key = key
    * header Content-Type = 'application/json'

  Scenario: Deleting of the image and Id of the breed

    Given path 'images/', imageId
    When method delete
    Then status 204
    And assert response == null
    * print 'Image and breed ID deleted successfully'
