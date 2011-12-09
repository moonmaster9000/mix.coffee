
  module.exports = function() {
    this.World = require("../support/world.js").World;
    return this.Given(/^.*$/, function(string, next) {
      eval(this.CoffeeScript.compile(string, {
        bare: true
      }));
      return next();
    });
  };
