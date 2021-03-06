Feature: Gherkin 6 syntax

  Background:
    Given there is a monster with 2 hitpoints

  Scenario: Defeat 2 hit points monster
    When I attack it
    Then the monster should be alive
    When I attack it
    Then it should die

  Rule: Battle with preemptive attack
  Background:
    Given I attack the monster and do 1 points damage

  Example: Defeat 1 hit points
    When I attack it
    Then it should die

  Rule: Battle with preemptive critical attack
  Background:
    Given I attack the monster and do 2 points damage

  Example: Already no hit points
    Then it should die