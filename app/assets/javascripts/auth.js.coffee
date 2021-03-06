StripfighterEmber.Auth = Ember.Auth.create
  signInEndPoint: '/users/sign_in'
  signOutEndPoint: '/users/sign_out'

  tokenKey: 'auth_token'
  tokenIdKey: 'user_id'

  userModel: 'StripfighterEmber.User'

  modules: ['emberModel', 'actionRedirectable', 'authRedirectable', 'rememberable']

  actionRedirectable:
    signInRoute: 'prompts'
    signOutRoute: 'login'

  rememberable:
    tokenKey: 'remember_token'
    period: 7
    autoRecall: true
