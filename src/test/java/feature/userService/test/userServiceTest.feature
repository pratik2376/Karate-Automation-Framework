@userTest

Feature: User Service Test

Background: 

* def index = 0

* def args = {}

* args.tags = karate.tags

* def successResponseCode = 200

* def userId = DATA.CustomerDetails[index].userId

* def requestBody = read('classpath:feature/api/UserService/PutUser.json')

@Test
Scenario: verify whether user is able to update the data.

When call read(ENDPOINTS.USER+'@PutUser') args
Then match responseStatus == successResponseCode
And print response
* assert response.name == requestBody.name
* assert response.job == requestBody.job
