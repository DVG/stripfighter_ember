Ember.Handlebars.helper 'currentUser', ->
  StripfighterEmber.Auth.get('user')

Ember.Handlebars.helper 'currentUserEmail', ->
  StripfighterEmber.Auth.get('user').get('email')