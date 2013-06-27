StripfighterEmber.BeginChallengeView = Ember.View.extend
  templateName: "begin_challenge"
  tagName: "button"
  classNames: ['btn', 'btn-inverse']
  template: Ember.Handlebars.compile('<i class="icon-pencil icon-white"></i> Begin Challenge!')

  click: ->
    @get('controller').send('beginChallenge')
    false