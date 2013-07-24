StripfighterEmber.Comic = Ember.Model.extend
  id: Ember.attr()
  title: Ember.attr()
  image_url: Ember.attr()
  prompt_one: Ember.belongsTo('StripfighterEmber.Prompt', {key: 'prompt_one', embedded: true})
  prompt_two: Ember.belongsTo('StripfighterEmber.Prompt', {key: 'prompt_two', embedded: true})

StripfighterEmber.Comic.adapter = Ember.RESTAdapter.create()
StripfighterEmber.Comic.url = "/api/v1/comics"
StripfighterEmber.Comic.collectionKey = "comics"
StripfighterEmber.Comic.rootKey = "comic"