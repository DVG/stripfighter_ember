Ember.Handlebars.helper 'userEmail', ->
  StripfighterEmber.Auth.get('user').get('email')