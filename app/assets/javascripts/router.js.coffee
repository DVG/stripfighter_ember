StripfighterEmber.Router.map ->
  @route "prompts", path: '/',
  @route "registration", path: '/sign_up',
  @route "login", path: '/login'
  @route "logout", path: '/logout'

StripfighterEmber.PromptsRoute = Ember.Route.extend
  model: -> StripfighterEmber.Prompt.find()

StripfighterEmber.ApplicationRoute = Ember.Route.extend()
StripfighterEmber.RegistrationRoute = Ember.Route.extend()
StripfighterEmber.LoginRoute = Ember.Route.extend()
StripfighterEmber.LogoutRoute = Ember.Route.extend()