@ignore
Feature: Test Endpoint 4

Background: 

# * headers {Authorization: #(SERVICES.A.authorizationToken)}
* url SERVICES.BOT.url
* path 'users/'+ userId
@PatchUser
Scenario: Endpoint to post user record
* json reqJson = read('this:PatchUser.json')
And request reqJson
* print reqJson
When method PATCH
* print karate.prevRequest
* print response