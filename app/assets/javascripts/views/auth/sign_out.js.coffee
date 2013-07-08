StripfighterEmber.AuthSignOutView = Em.View.extend
  templateName: 'auth/sign_out'

  submit: (event, view) ->
    event.preventDefault()
    event.stopPropagation()
    StripfighterEmber.Auth.signOut()