Feature:sample karate test script
for help, see: https://github.com/karatelabs/karate/wiki/IDE-Support


  Background:
    * url baseUrl
    * def key = key

  Scenario Outline: creating a vote
    Given url 'https://api.thedogapi.com/v1/votes'
    And header x-api-key = 'live_Vai9gmBWwbA2mvtn5RF4ZQ4OVoai1gVudThlYcU7aw9SXoQOYt4QwQ6fO9fNQjvS'
    And request
      """
      {
        "user_id": "195340",
        "image_id": "asf2",
        "value": 5


      }
      """
    And  header Content-Type = 'application/json'
    When method POST
    Then status <statusCode>
    * def voteIdAsString = "195340"
#    * def getVoteResponse = call read('get_vote_id.feature') { voteID: '#(voteIdAsString)' }
#    * def getVoteResponse = call read('get_vote_id.feature') { voteID: '#(voteID)' }

    # Assert the response body attributes
    And match response contains { id: '#number', image_id: '#string', value: '#number', country_code: '#string' }

    # Assert specific values in the response
    And match response.id != null
    And match response.image_id == 'asf2'
    And match response.value == 5
    And match response.country_code != null

    # Assert response message
    And match response.message == 'SUCCESS'
    And match response.message != 'FAILURE'

     * def voteIdAsString = response.id
#     * def getVoteResponse = call read('generic_get_vote_id.feature') { voteID: '#(voteIdAsString)' }


#     * match response contains { id: '#number', image_id: '#string', value: '#number', country_code: '#string' }
#     * match response.message != 'FAILURE'

#     * def getVoteResponse = call read('generic_delete_voteid.feature') { voteID: '#(voteIdAsString)' }


    Examples:
      |user_id|image_id|value|statusCode|
      |12345   |'asf2 '|5    |201|

  Scenario Outline: creating a vote
    Given url 'https://api.thedogapi.com/v1/votes'
    And header x-api-key = 'live_Vai9gmBWwbA2mvtn5RF4ZQ4OVoai1gVudThlYcU7aw9SXoQOYt4QwQ6fO9fNQjvS'
    And request
      """
      {
        "image_id": <imageId>,
        "sub_id": <subId>,
        "value": <value>

      }
      """
    And  header Content-Type = 'application/json'
    When method POST
    Then status <statusCode>
    * match response == <response>

    Examples:
      |imageId    |subId   |value|statusCode|response|
      |'Zk4o-vpkFc'|        |0    |400       |'"sub_id" is not allowed to be empty'|
      |           |        |null |400       |'"image_id" is not allowed to be empty'|
