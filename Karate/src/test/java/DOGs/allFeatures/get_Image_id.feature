Feature: Sample karate test script
for help, see: https://github.com/karatelabs/karate/wiki/IDE-Support

  Background:
    * url baseUrl
    * def key = key

  Scenario Outline: Get the id of the DOGs
    * def image = <imageName>
    * def getImageResponse = call read('generic_get_Image_id.feature') {imageID: '#(image)'}
    * match getImageResponse.response status == <responseStatus>

    Examples:
      |imageName|responseStatus|
      |'Leonie'|200|
      |'123'|404|

