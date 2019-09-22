Feature: JSONPlaceholder Tests
    Background:
        * url "https://jsonplaceholder.typicode.com"

    @api @smoke
    Scenario: Create a new post
        Given path "/posts"
        And request { title:'foo', body:'bar', userId:'102' }
        When method POST
        Then status 201
        And match response == { id:'#notnull', title:'foo', body:'bar', userId:'102' }

    @negative @ignore
    Scenario: Create a new post - negative
        Given path "/posts"
        And request { title:'foo', body:'bar', userId:'102' }
        When method POST
        Then status 201
        And match response == { id:'#notnull', title:'foo', body:'bar', userId:'104' }

    @api
    Scenario: Update an existing post
        Given path "/posts/1"
        And request { title:'foo', body:'bar', userId:'102' }
        When method PUT
        Then status 200
        And match response == { id:'#notnull', title:'foo', body:'bar', userId:'102' }

    @api
    Scenario: Remove a post permanently
        Given path "/posts/1"
        When method DELETE
        Then status 200
        And match response == { }


    @api
    Scenario: List all posts
        Given path "/posts"
        When method GET
        Then status 200
        And match response == read('ExpectedResponses/all-list.json')


    @api
    Scenario: List all posts, but filter them
        Given path "/posts"
        And param userId = 1
        When method GET
        Then status 200
        And match response == read('ExpectedResponses/all-list-filter.json')

    @api
    Scenario: Show an existing post
        Given path "/posts/1"
        When method GET
        Then status 200
        And match response == read('ExpectedResponses/existing-post.json')

