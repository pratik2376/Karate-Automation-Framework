@callTest

Feature: Call Service Test

Background: 

* def index = 0

* def args = {}

* args.tags = karate.tags

* def successResponseCode = 201

@Test123
Scenario: verify whether user is getting expected response code

* args.name = 'pratik'
* args.job = 'SDET'
When call read(ENDPOINTS.CALL+'@PostUser') args
Then match responseStatus == successResponseCode
And print response