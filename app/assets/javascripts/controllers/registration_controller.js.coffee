StripfighterEmber.RegistrationController = Ember.Controller.extend
  email: null
  password: null
  passwordConfirmation: null
  emailErrors: []
  passwordErrors: []

  hasEmailErrors: Ember.computed.notEmpty('emailErrors')
  hasPasswordErrors: Ember.computed.notEmpty('passwordErrors')

  emailErrorOutput: (->
    output = "Email "
    for error in @emailErrors
      output = "#{output} #{error}"
  ).property('emailErrors')

  passwordErrorOutput: (->
    output = "Password "
    for error in @passwordErrors
      output = "#{output} #{error}"
  ).property('passwordErrors')

  sendRegistration: () ->
    self = @
    self.set('emailErrors', null)
    self.set('passwordErrors', null)
    $.post('/users', 
      user:
        email: @email,
        password: @password,
        password_confirmation: @passwordConfirmation)
    .done (response) ->
      StripfighterEmber.Auth.createSession(response)
    .fail (response) ->
      errors = response.responseJSON.errors
      if errors.email
        self.set('emailErrors', errors.email)
      if errors.password
        self.set('passwordErrors', errors.password)