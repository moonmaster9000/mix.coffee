Mix = (mixins...) ->
  new Mixer(mixins)

class Mixer
  constructor: (mixins) ->
    @mixins = mixins

  into: (objects...) ->
    for mixin in @mixins
      for name, method of mixin
        for object in objects
          object[name] = method

if module?
  module.exports = Mix
else if window?
  window.Mix = Mix
