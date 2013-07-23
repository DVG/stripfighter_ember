StripfighterEmber.Comic = Ember.Model.extend
  id: Ember.attr()
  title: Ember.attr()
  prompt_one: Ember.belongsTo('StripfighterEmber.Prompt', {key: 'prompt_one_id'})
  prompt_two: Ember.belongsTo('StripfighterEmber.Prompt', {key: 'prompt_two_id'})

StripfighterEmber.Comic.adapter = Ember.RESTAdapter.create()
StripfighterEmber.Comic.url = "/api/v1/comics"
StripfighterEmber.Comic.collectionKey = "comics"
