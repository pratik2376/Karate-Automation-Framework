@botTest

Feature: Bot Service Test

Background: 

* def index = 0

* def args = {}

* args.tags = karate.tags

* def successResponseCode = 200

* def userId = DATA.CustomerDetails[index].userId

* def requestBody = read('classpath:feature/api/BotService/PatchUser.json')

@Test
Scenario: verify whether user is able to update the data.

When call read(ENDPOINTS.BOT+'@PatchUser') args
Then match responseStatus == successResponseCode
And print response
* assert response.name == requestBody.name
* assert response.job == requestBody.job
