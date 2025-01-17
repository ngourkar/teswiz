@jioCinema
#  CONFIG=./configs/jiocinema_local_config.properties PLATFORM=android TAG=jioCinema ./gradlew run
Feature: jio cinema test

  #  CONFIG=./configs/jiocinema_local_config.properties PLATFORM=android TAG=swipe ./gradlew run
  @android @swipe @swipeLeft @swipeRight
  Scenario: validating swipe functionality
    Given I navigate to jio Cinema application's home page
    When I swipe left on tending in india section
    Then I am able to view number 3 trending movie
    When I swipe right on tending in india section
    Then I am able to view number 1 trending movie

 #  CONFIG=./configs/jiocinema_local_config.properties PLATFORM=android TAG=horizontalSwipeUsingGesturePluginTest ./gradlew run
  @android @swipe @horizontalSwipeUsingGesturePluginTest
  Scenario: validating horizontal swipe with gesture functionality
    Given I navigate to jio Cinema application's home page
    When I swipe "left" trending no 2 on trending in india section
    Then I am able to view number 3 trending movie
    When I swipe "right" trending no 2 on trending in india section
    Then I am able to view number 1 trending movie
