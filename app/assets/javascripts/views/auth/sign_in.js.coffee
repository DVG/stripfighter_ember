StripfighterEmber.AuthSignInView = Em.View.extend
  templateName: 'auth/sign_in'

  email:    null
  password: null
  remember: false

  submit: (event, view) ->
    event.preventDefault()
    event.stopPropagation()
    StripfighterEmber.Auth.signIn
      data:
        email:    @get 'email'
        password: @get 'password'
        remember: @get 'remember'