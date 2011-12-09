(function() {
  module.exports = function() {
    this.Given(/^I have required 'mix':$/, function(string, next) {
      eval(string);
      return next();
    });
    this.Given(/^a Coffee class:$/, function(string, next) {
      eval(string);
      return next();
    });
    this.Given(/^a Drinkable object with a `drink` method:$/, function(string, next) {
      eval(string);
      return next();
    });
    this.When(/^I use the Mix API to mix `Drinkable` into `Coffee.prototype`:$/, function(string, next) {
      eval(string);
      return next();
    });
    return this.Then(/^instances of Coffee should include a `drink` method:$/, function(string, next) {
      eval(string);
      return next();
    });
  };
}).call(this);
