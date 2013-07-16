StripfighterEmber.AuthenticatedRoute = Ember.Route.extend
  beforeModel: (transition) ->
    if !StripfighterEmber.Auth.get('signedIn')
      return Ember.RSVP.reject();

  events: {
    error: (reason, transition) ->
      loginController = @controllerFor('login')
      loginController.set('loginError', "ARTIST. You must be logged in to perform that action.")
      loginController.set('afterLoginTransition', transition)
      @transitionTo('login')
  }