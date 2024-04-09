Feature: Sample karate test script
for help, see: https://github.com/karatelabs/karate/wiki/IDE-Support

  Background:
    * url baseUrl
    * header x-api-key = key
  Scenario Outline: Get the vote if of dog
    * def voteId = "100"
    * def vote = "<{voteId}>"
    * def vtId = voteId.toString()
    * def voteIdAsString = voteId + ''
    * def expectedId = '#number'
    * def expectedName = '#string'
    * def responseStatus = 200
    * def getVoteResponse = call read('generic_get_vote_id.feature') { voteId: '#(voteIdAsString)' }

    Given path 'votes/' + voteId
    When method get
    Then status 200
#    * print.response
#    * print getVoteResponse

    Examples:
      |user_id|image_id|value|
      |12345   |'asf2 '|5    |
