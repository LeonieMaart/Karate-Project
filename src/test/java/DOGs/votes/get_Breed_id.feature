Feature: Sample karate test script
for help, see: https://github.com/karatelabs/karate/wiki/IDE-Support

  Background:
    * url baseUrl
    * def key = key

  Scenario Outline: Get the breeds of all the dogs
    * def breedId = "100"
    * def breed = "<{breedId}>"
    * def brdId = breedId.toString()
    * def breedIdAsString = breedId + ''
    * def expectedId = '#number'
    * def expectedName = '#string'
    * def responseStatus = 200
    * def getBreedResponse = call read('generic_get_breed_id.feature') { breedId: '#(breedIdAsString)' }

    * print.response
    * print getBreedResponse

    * match getBreedResponse.response.id == expectedId
    * match getBreedResponse.response.name == expectedName
    * match getBreedResponse.response.errorCode == '404'

#    * match karate.keysOf(getBreedResponse.response) == ["id", "name"]
#    * match getBreedResponse.headers == 'application/json'
#   * match getBreedResponse.response.status == responseStatus




    Examples:
      |Id|name|responseStatus|
      |100|'English Foxhound'|200|
#      |Afghan Hound|'Afghanistan'|200|
#      |'123'|'24256'|404|

