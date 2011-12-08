var MixWrapper = function() {
  this.Given(/^a Coffee class:$/, function(string, callback) {
    eval(string);
    callback();
  });

  this.Given(/^a Drinkable object with a `drink` method:$/, function(string, callback) {
    eval(string);
    callback();
  });

  this.When(/^I use the Mix API to mix `Drinkable` into `Coffee`:$/, function(string, callback) {
    eval(string);
    callback();
  });

  this.Then(/^instances of Coffee should include a `drink` method:$/, function(string, callback) {
    eval(string);
    callback();
  });
};

module.exports = MixWrapper;
