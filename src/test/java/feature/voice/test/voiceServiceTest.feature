@voiceTest

Feature: Voice Service Test

Background: 

* def index = 0

* def args = {}

* args.tags = karate.tags

* def successResponseCode = 204

* def userId = DATA.CustomerDetails[index].userId

@Test
Scenario: verify whether user is able to delete the data.

When call read(ENDPOINTS.VOICE+'@DeleteUser') args
Then match responseStatus == successResponseCode
And print response