module.exports = ->
  @World = require("../support/world.js").World

  @Given /^.*$/, (string, next) ->
    eval @CoffeeScript.compile string, bare: on
    next()
