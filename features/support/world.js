require.paths.unshift(__dirname + '/../../src');
var World = function() {
  this.Mix          = require('mix');
  this.CoffeeScript = require('coffee-script');
};
exports.World = World;
