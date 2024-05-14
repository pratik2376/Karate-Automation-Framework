@ignore
Feature: Test Endpoint 2

Background: 

# * headers {Authorization: #(SERVICES.A.authorizationToken)}
* url SERVICES.CALL.url
* path 'users'

@PostUser
Scenario: Endpoint to post user record
* json reqJson = read('this:PostUser.json')
And request reqJson
* print reqJson
When method POST
* print response