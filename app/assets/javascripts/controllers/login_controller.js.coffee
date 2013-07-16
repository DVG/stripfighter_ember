StripfighterEmber.LoginController = Ember.Controller.extend

  email:    null
  password: null
  remember: true
  loginError: null
  afterLoginTransition: null

  login: () ->
    self = @
    StripfighterEmber.Auth.signIn
      data:
        email:    @get 'email'
        password: @get 'password'
        remember: @get 'remember'
    .done (response) ->
      self.clearForm()
    .fail (response) ->
      self.set('loginError', "Your username or password was incorrect. Please try again")

  clearForm: ->
    @set('loginError', null)
    @set('email', null)
    @set('password', null)
    @set('remember', true)