StripfighterEmber.ApplicationController = Ember.Controller.extend
  signOut: ->
    StripfighterEmber.Auth.signOut()
    StripfighterEmber.Auth.destroySession()