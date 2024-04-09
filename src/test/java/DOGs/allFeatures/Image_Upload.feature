Feature:sample karate test script
for help, see: https://github.com/karatelabs/karate/wiki/IDE-Support

  Background:
    * url baseUrl
    * def key = key
    * header x-api-key = key
    * header Content-Type = 'multipart/form-data'

  Scenario Outline: Test that image can be uploaded successfully
    Given path '/v1/images/upload'
    And multipart file file = <dog_image>
    And multipart field sub_id = <sub_id>
    And multipart field breed_id = <breed_ids>
    When method post
    Then status <status_code>
    * def image = response.id
    * def getImageResponse = call read('generic_get_Image_id.feature') {imageID: '#(image)'}
    * match getImageResponse.response status == 200
    * match getImageResponse.response.id == image
    * match getImageResponse.response contains image
    * def deleteImageResponse = call read('generic_delete_ImagesId.feature') {imageID: '#(image)'}
    * match deleteImageResponse.response status == 204
#        And assert response == null
#
#    Examples:
#      |sub_id|breed_ids|dog_image|status_code|
#      |'user1'| '2'    |{ read: 'Images/dog.jpg', filename: 'dog.jpg', Content-Type: 'multipart/form-data' } |201|
#      ||    |{ read: 'Images/dog.jpg', filename: 'dog.jpg', Content-Type: 'multipart/form-data' } |201|
#      |'user1'|     |{ read: 'Images/dog.jpg', filename: 'dog.jpg', Content-Type: 'multipart/form-data' } |201|
#
#

  Scenario Outline: Test that the image does not get uploaded
    Given path '/v1/images/upload'
    And multipart file file = <dog_image>
    And multipart field sub_id = <sub_id>
    And multipart field breed_id = <breed_ids>
    When method post
    Then status <status_code>
    #    And assert response == null

    Examples:
      |sub_id|breed_ids|dog_image|status_code|
      |'user1'| '2'    | |400|
      |'user1'| '2'    |{ read: 'dog.jpg', filename: 'dog.jpg', Content-Type: 'multipart/form-data' } |400|








  #  * print 'Images uploaded successfully'
  #
  #  Scenario: Calling all features
  #    * call read('Images.feature')
  #    * call read('Image_Search.feature')
  #    * call read('generic_get_Image_id.feature')
  #    * call read('Image_Upload.feature')
  #    * call read('Delete_Imageid.feature')
