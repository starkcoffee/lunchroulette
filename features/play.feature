Feature: Play LunchRoulette
    As the croupier
    I want to spin the LunchRoulette wheel
    So that all players get a random lunch date


    Scenario: Only enough players for one lunch group
        Given there are 3 players
        And the number of people in a lunch group is 4
        When the croupier spins the LunchRoulette wheel
        Then there is 1 lunch group(s)
        And all players are listed

    Scenario: Put players lunch groups
        Given there are 10 players
        And the number of people in a lunch group is 4
        When the croupier spins the LunchRoulette wheel
        Then there is 3 lunch group(s)
        Then show me the page
