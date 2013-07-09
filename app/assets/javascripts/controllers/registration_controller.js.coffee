StripfighterEmber.RegistrationController = Ember.Controller.extend
  email: null
  password: null
  passwordConfirmation: null

  sendRegistration: () ->
    self = this
    $.post('/users', 
      user:
        email: @email,
        password: @password,
        password_confirmation: @passwordConfirmation
    ).then (response) ->
      if (response.success)
        alert('Login succeeded!')