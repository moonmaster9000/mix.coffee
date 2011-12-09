Feature: Mix API
  
  Scenario: Mixing properties into an object's prototype
    Given a Coffee class:
      """
        @Coffee = class Coffee
      """

    And a Drinkable object with a `drink` method:
      """
        @Drinkable = drink: -> true
      """

    When I use the Mix API to mix `Drinkable` into `Coffee.prototype`:
      """
        @Mix(@Drinkable).into @Coffee.prototype
      """

    Then instances of Coffee should include a `drink` method:
      """
        if ((new @Coffee).drink == null)
          throw new Error("coffee does not respond to drink!")
      """
