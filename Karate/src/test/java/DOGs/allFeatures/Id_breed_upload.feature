Feature:sample karate test script
for help, see: https://github.com/karatelabs/karate/wiki/IDE-Support

  Background:
    * url baseUrl
    * def key = key
    * header Content-Type = 'application/json'

  Scenario: upload the images of the DOGs
    Given path 'v1/images/'
    And param limit = 10
    And param page = 0
    And param order = 'DESC'
    And multipart file dogImage = { read: 'path/to/dog.jpg', filename: 'dog.jpg', contentType: 'image/jpeg' }
    When method post
    Then status 204
    * print 'Images upload successfully'