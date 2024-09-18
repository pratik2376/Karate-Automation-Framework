@ignore
Feature: Test Endpoint 5

Background: 

# * headers {Authorization: #(SERVICES.A.authorizationToken)}
* url SERVICES.VOICE.url
* path 'users/'+ userId

@DeleteUser
Scenario: Endpoint to delete user record
When method DELETE
* print karate.prevRequest
* print response