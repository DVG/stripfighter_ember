StripfighterEmber.Prompt = Ember.Model.extend
  id: Ember.attr()
  content: Ember.attr()
  selected: Ember.attr()

StripfighterEmber.Prompt.adapter = Ember.RESTAdapter.create()
StripfighterEmber.Prompt.url = "/api/v1/prompts"
StripfighterEmber.Prompt.collectionKey = "prompts"
