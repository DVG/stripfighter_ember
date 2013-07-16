StripfighterEmber.AuthenticatedRoute = Ember.Route.extend
  beforeModel: (transition) ->
    if !StripfighterEmber.Auth.get('signedIn')
      return Ember.RSVP.reject();

  events: {
    error: (reason, transition) ->
      loginController = @controllerFor('login')
      loginController.set('afterLoginTransition', transition)
      @transitionTo('login')
  }