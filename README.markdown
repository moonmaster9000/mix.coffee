# mix.coffee

A simple library for mixing properties into your javascript objects and prototypes. This is similar to the "extend" keyword in ruby land, except notably less awesome.

## Installation

This library is available as:

* a node package ("mix")

In the future, I plan to make it available as:

* a rails 3.1 engine gem for use within the asset pipeline ("mix")
* a standalone javascript file (downloaded through the "Downloads" tab on this page)

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

You can mix several objects at once:

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

Now, we can ask our objects if they're alchoholic:

```coffeescript
Beer.containsAlchohol()   #==> true
Tea.containsAlchohol()    #==> false 
Coffee.containsAlchohol() #==> false
```

Note that we're not limited to mixing only one object at a time:

```coffeescript
Mix(A, B, C).into D, E, F, G
```

