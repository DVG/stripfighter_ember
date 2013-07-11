StripfighterEmber.RegistrationController = Ember.Controller.extend
  email: null
  password: null
  passwordConfirmation: null

  sendRegistration: () ->
    self = @
    $.post('/users', 
      user:
        email: @email,
        password: @password,
        password_confirmation: @passwordConfirmation)
    .done (response) ->
      StripfighterEmber.Auth.createSession(response)
    .fail (response) ->
      # display errors