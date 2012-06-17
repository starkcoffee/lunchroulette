Feature: Create Combinations of People
    In order to get to know different people in my organisation
    I want to generate combinations of people
    So that I can go to lunch with them

    Scenario: Create A New Combinator
        Given there is no combinator for people
        When I go to the combinator link for people
        Then I should see that it doesn't exist
        When I choose to create it
        Then I see the form for adding a person's name to the combinator
