(function() {
  var Mix, Mixer;
  var __slice = Array.prototype.slice;

  Mix = function() {
    var mixins;
    mixins = 1 <= arguments.length ? __slice.call(arguments, 0) : [];
    return new Mixer(mixins);
  };

  Mixer = (function() {

    function Mixer(mixins) {
      this.mixins = mixins;
    }

    Mixer.prototype.into = function() {
      var method, mixin, name, object, objects, _i, _len, _ref, _results;
      objects = 1 <= arguments.length ? __slice.call(arguments, 0) : [];
      _ref = this.mixins;
      _results = [];
      for (_i = 0, _len = _ref.length; _i < _len; _i++) {
        mixin = _ref[_i];
        _results.push((function() {
          var _results2;
          _results2 = [];
          for (name in mixin) {
            method = mixin[name];
            _results2.push((function() {
              var _j, _len2, _results3;
              _results3 = [];
              for (_j = 0, _len2 = objects.length; _j < _len2; _j++) {
                object = objects[_j];
                _results3.push(object[name] = method);
              }
              return _results3;
            })());
          }
          return _results2;
        })());
      }
      return _results;
    };

    return Mixer;

  })();

  if (typeof module !== "undefined" && module !== null) {
    module.exports = Mix;
  } else if (typeof window !== "undefined" && window !== null) {
    window.Mix = Mix;
  }

}).call(this);
