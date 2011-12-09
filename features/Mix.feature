Feature: Mix API
  
  Background:
    Given I have required 'mix':
      """
        var Mix = require('mix');
      """

  Scenario: Mixing properties into an object's prototype
    Given a Coffee class:
      """
        var Coffee = function(){};
      """

    And a Drinkable object with a `drink` method:
      """
        var Drinkable = {
          drink: function(){
            return true;
          }
        };
      """

    When I use the Mix API to mix `Drinkable` into `Coffee.prototype`:
      """
        Mix(Drinkable).into(Coffee.prototype);
      """

    Then instances of Coffee should include a `drink` method:
      """
        var coffee = new Coffee();

        if (coffee.drink == null){
          throw new Error("coffee does not respond to drink!");
        }
      """
