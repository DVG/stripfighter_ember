StripfighterEmber.Auth = Ember.Auth.create
  signInEndPoint: '/users/sign_in'
  signOutEndPoint: '/users/sign_out'
  tokenKey: 'auth_token'
  tokenIdKey: 'user_id'
  userModel: 'StripfighterEmber.User'

  modules: ['emberData', 'authRedirectable', 'actionRedirectable', 'rememberable']
  
  rememberable:
    tokenKey: 'remember_token'
    period: 7 # default 14
    autoRecall: true # default true
