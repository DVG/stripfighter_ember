StripfighterEmber.RegistrationController = Ember.Controller.extend
  email: null
  password: null
  passwordConfirmation: null

  sendRegistration: () ->
    $.post('/api/v1/users', 
      user:
        email: @email,
        password: @password,
        password_confirmation: @passwordConfirmation)
    .done (response) ->
      # redirect to Elimination Challenge
    .fail (response) ->
      # display errors