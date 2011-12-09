
  module.exports = function() {
    this.World = require("../support/world.js").World;
    this.Given(/^a Coffee class:$/, function(string, next) {
      eval(this.CoffeeScript.compile(string, {
        bare: true
      }));
      return next();
    });
    this.Given(/^a Drinkable object with a `drink` method:$/, function(string, next) {
      eval(this.CoffeeScript.compile(string, {
        bare: true
      }));
      return next();
    });
    this.When(/^I use the Mix API to mix `Drinkable` into `Coffee.prototype`:$/, function(string, next) {
      eval(this.CoffeeScript.compile(string, {
        bare: true
      }));
      return next();
    });
    return this.Then(/^instances of Coffee should include a `drink` method:$/, function(string, next) {
      eval(this.CoffeeScript.compile(string, {
        bare: true
      }));
      return next();
    });
  };
