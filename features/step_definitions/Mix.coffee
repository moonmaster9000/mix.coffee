module.exports = ->
  @World = require("../support/world.js").World

  @Given /^a Coffee class:$/, (string, next) ->
    eval @CoffeeScript.compile string, bare: on
    next()

  @Given /^a Drinkable object with a `drink` method:$/, (string, next) ->
    eval @CoffeeScript.compile string, bare: on
    next()

  @When /^I use the Mix API to mix `Drinkable` into `Coffee.prototype`:$/, (string, next) ->
    eval @CoffeeScript.compile string, bare: on
    next()

  @Then /^instances of Coffee should include a `drink` method:$/, (string, next) ->
    eval @CoffeeScript.compile string, bare: on
    next()
