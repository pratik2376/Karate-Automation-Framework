@smsTest

Feature: Sms Service Test

Background: 

* def index = 0

* def args = {}

* args.tags = karate.tags

* def successResponseCode = 200

* def TestData = DATA.CustomerDetails[index].Name

@Test
Scenario: verify whether user is user list based on page number
* args.pageNumber = '4'
* print TestData

When call read(ENDPOINTS.SMS+'@GetUsers') args
Then match responseStatus == successResponseCode
And print response
