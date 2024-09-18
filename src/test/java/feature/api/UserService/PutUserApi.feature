@ignore
Feature: Test Endpoint 3

Background: 

# * headers {Authorization: #(SERVICES.A.authorizationToken)}
* url SERVICES.USER.url
* path 'users/'+ userId

@PutUser
Scenario: Endpoint to post user record
* json reqJson = read('this:PutUser.json')
And request reqJson
* print reqJson
When method PUT
* print karate.prevRequest
* print response