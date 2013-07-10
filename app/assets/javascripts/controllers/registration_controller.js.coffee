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
      StripfighterEmber.Auth.signIn(
        data:
          email: self.email
          password: self.password
          remember: true
      )
    .fail (response) ->
      # display errors