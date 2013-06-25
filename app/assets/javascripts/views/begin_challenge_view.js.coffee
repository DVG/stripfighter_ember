StripfighterEmber.BeginChallengeView = Ember.View.extend
  templateName: "begin_challenge"
  tagName: "form"

  beginChallenge: ->
    jQuery("#js-ready-set-art").show