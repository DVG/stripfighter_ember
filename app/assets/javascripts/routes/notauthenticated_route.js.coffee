StripfighterEmber.NotAuthenticatedRoute = Ember.Route.extend
  beforeModel: (transition) ->
    if StripfighterEmber.Auth.get('signedIn')
      return Ember.RSVP.reject();

  events: {
    error: (reason, transition) ->
      @transitionTo('home')
  }