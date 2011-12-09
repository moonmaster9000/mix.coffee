module.exports = ->
  @Given /^I have required 'mix':$/, (string, next) ->
    eval string
    next()

  @Given /^a Coffee class:$/, (string, next) ->
    eval string
    next()

  @Given /^a Drinkable object with a `drink` method:$/, (string, next) ->
    eval string
    next()

  @When /^I use the Mix API to mix `Drinkable` into `Coffee.prototype`:$/, (string, next) ->
    eval string
    next()

  @Then /^instances of Coffee should include a `drink` method:$/, (string, next) ->
    eval string
    next()
