Feature:
Feature: sample karate test script
for help, see: https://github.com/karatelabs/karate/wiki/IDE-Support

  Background:
    * url baseUrl
    * header x-api-key = key
    * header Content-Type = 'application/json'


  Scenario Outline: Deleting a voteId
* def getdeleteResponse = call read('generic_delete_voteid.feature'){'voteID':<vote>}
    * match getdeleteResponse.responseStatus ==<status>
    * match getdeleteResponse.response.message == "SUCCESS"

    Examples:
      |vote|status|
      |194383|200|

  Scenario Outline: Testing if the delete was unsuccessful
    * def getdeleteResponse = call read('generic_delete_voteid.feature'){'voteID':<vote>}
    * match getdeleteResponse.responseStatus ==<status>
    * match getdeleteResponse.response.message == "NOT FOUND"

    Examples:
      |vote|status|
      |1445574|404|

