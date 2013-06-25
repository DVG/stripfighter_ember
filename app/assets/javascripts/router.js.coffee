StripfighterEmber.Router.map ->
  @route "prompts", path: '/'

StripfighterEmber.PromptsRoute = Ember.Route.extend
  model: -> StripfighterEmber.Prompt.find()

