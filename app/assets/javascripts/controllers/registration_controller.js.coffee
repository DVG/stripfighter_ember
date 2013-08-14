StripfighterEmber.RegistrationController = Ember.Controller.extend
  email: null
  password: null
  passwordConfirmation: null
  emailErrors: []
  passwordErrors: []
  usernameErrors: []

  hasEmailErrors: Ember.computed.notEmpty('emailErrors')
  hasUsernameErrors: Ember.computed.notEmpty('usernameErrors')
  hasPasswordErrors: Ember.computed.notEmpty('passwordErrors')

  emailErrorOutput: (->
    output = "Email "
    for error in @emailErrors
      output = "#{output} #{error}"
  ).property('emailErrors')

  usernameErrorOutput: (->
    output = "Username "
    for error in @usernameErrors
      output = "#{output} #{error}"
  ).property('usernameErrors')

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
        username: @username,
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
      if errors.username
        self.set('usernameErrors', errors.username)
