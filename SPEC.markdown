# mix.coffee

A simple library for mixing properties into your javascript probjects. This is similar to "include" and "extend" in ruby land.

## Installation

Use the "downloads" tab on the Github page for this project to download a release.

If you use Rails 3.1, you can include the "mix" gem into your project's Gemfile:

    gem 'mix'

The engine includes the "mix" coffeescript library as an asset that you can use in your asset pipeline.

## Tutorial

Let's imagine that we've created the following classes in coffeescript:

```coffeescript
class Coffee
class Beer
class Tea
```

Now, let's imagine that we'd like to create a reusable function for drinking beverages.

```coffeescript
Drinkable = 
  drink: ->
    console.log "gulp"
```

We can mix this into the prototype for all of our classes via the `Mix` method:

```coffeescript
Mix(Drinkable).into Coffee.protoype, Beer.prototype, Tea.prototype
```

Notice that we passed the prototype for our objects to our `Mix` API.

Now, if we create an instance of any of our classes, we'll be able to `drink` them:

```coffeescript
(new Coffee).drink()
```

Note that we can also extend the `Coffee`, `Beer`, and `Tea` objects with methods directly using the same API:

```coffeescript
Alchoholic = 
  containsAlchohol: ->
    true

NonAlchoholic = 
  containsAlchohol: ->
    false

Mix(Alchoholic).into Beer
Mix(NonAlchoholic).into Tea, Coffee
```

Now, we can ask our objects if they're an alchoholic beverages:

```coffeescript
Beer.containsAlchohol   #==> true
Tea.containsAlchohol    #==> false 
Coffee.containsAlchohol #==> false
```
