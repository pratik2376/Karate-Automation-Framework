@ignore
Feature: Test Endpoint

    Background: 
        # * headers {Authorization: #(SERVICES.A.authorizationToken)}
        * url SERVICES.SMS.url
        * path 'users'

    @GetUsers
    Scenario: Endpoint to get user details by page
        And param page = __arg.pageNumber
        When method GET
        * print response