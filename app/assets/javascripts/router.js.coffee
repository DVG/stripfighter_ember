StripfighterEmber.Router.map ->
  @route "prompts", path: '/',
  @route "registration", path: '/sign_up',
  @route "login", path: '/login'
  @route "logout", path: '/logout'

StripfighterEmber.PromptsRoute = StripfighterEmber.AuthenticatedRoute.extend
  model: -> StripfighterEmber.Prompt.find()

StripfighterEmber.ApplicationRoute = Ember.Route.extend()
StripfighterEmber.LogoutRoute = Ember.Route.extend()