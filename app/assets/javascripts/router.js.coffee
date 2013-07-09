StripfighterEmber.Router.map ->
  @route "prompts", path: '/',
  @route "registration", path: '/sign_up',
  @route "login", path: '/login'

StripfighterEmber.PromptsRoute = Ember.Route.extend
  model: -> StripfighterEmber.Prompt.find()

StripfighterEmber.RegistrationRoute = Ember.Route.extend()

StripfighterEmber.LoginRoute = Ember.Route.extend()