Feature: Person signs up for LunchRoulette
    In order to meet more people at work
    I want to randomly meet people for lunch
    So that I feel part of a big random family


    Scenario: New person signs up
        Given I visit the lunch roulette page
        When I signup as duana with email duana@example.com
        Then I see I have been added
        And my details have been stored
