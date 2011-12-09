Feature: Mix API

  The `mix` library provides you with a simple API for extending objects with new methods.

  Basically, you pass one or more "mixins" (object literals with methods) to the "Mix" function, 
  which will then return an object that responds to the "into" method. You then pass one or more 
  objects to the "into" method, and voila! your mixin methods are copied into your objects. 

      Mix(A, B, C).into D, E, F
  
  Scenario: Mixing properties into an object's prototype
    
    * Let's imagine that we're creating a library for managing beverages:
      """
        @Coffee = class Coffee
        @Beer   = class Beer
        @Tea    = class Tea
      """

    * At some point, we decide to create a reusable function for drinking beverages:
      """
        @Drinkable = drink: -> true
      """
    
    * We can mix this into our beverage classes using the `Mix` API:
      """
        @Mix(@Drinkable).into @Coffee.prototype, @Beer.prototype, @Tea.prototype 
      """

    * Since we mixed into the `prototype` for our objects, then instances of our objects will have a `drink` method:
      """
        (new @Coffee).drink()
        (new @Beer).drink()
        (new @Tea).drink()
      """

    * Please note that we're not limited to mixing a single object at a time:
      """
        A = a: -> true
        B = b: -> true
        C = c: -> true
        class D
        class E

        @Mix(A, B, C).into D, E

        D.a()
        D.b()
        D.c()
        E.a()
        E.b()
        E.c()
      """
