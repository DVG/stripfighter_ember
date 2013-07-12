StripfighterEmber.AuthSignInView = Ember.View.extend
  templateName: 'auth/sign_in'

  email:    null
  password: null
  remember: true
  loginError: null

  submit: (event, view) ->
    self = @
    event.preventDefault()
    event.stopPropagation()
    StripfighterEmber.Auth.signIn
      data:
        email:    @get 'email'
        password: @get 'password'
        remember: @get 'remember'
    .done (response) ->
      self.set('loginError', null)
    .fail (response) ->
      self.set('loginError', "Your username or password was incorrect. Please try again")
