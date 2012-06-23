Feature: Play LunchRoulette
    As the croupier
    I want to spin the LunchRoulette wheel
    So that all players get a random lunch date


    @wip
    Scenario: Only enough players for one lunch group
        Given there are 3 players
        And the number of people in a lunch group is 4
        When the croupier spins the LunchRoulette wheel
        Then there is 1 lunch group with 3 players
