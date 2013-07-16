StripfighterEmber.RegistrationRoute = StripfighterEmber.NotAuthenticatedRoute.extend
  setupController: (controller) ->
    controller.set('email', null)
    controller.set('password', null)
    controller.set('passwordConfirmation', null)