StripfighterEmber.User = Ember.Model.extend
  id: Ember.attr()
  username: Ember.attr()
  email: Ember.attr()
  karma: Ember.attr()
  gravatar_url: Ember.attr()

StripfighterEmber.User.adapter = Ember.RESTAdapter.create()
StripfighterEmber.User.url = "/api/v1/users"
StripfighterEmber.User.collectionKey = "users"
StripfighterEmber.User.rootKey = "user"
