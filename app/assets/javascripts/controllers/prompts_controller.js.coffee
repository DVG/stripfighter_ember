StripfighterEmber.PromptsController = Ember.ArrayController.extend
  drawPrompts: ->
    @setEach('selected', false)
    @.selectPrompt()
    @.selectPrompt()

  selectPrompt: ->
    pool = @rejectProperty('selected')
    prompt = pool[Math.floor(Math.random()*pool.length)]
    prompt.set('selected', true)
    prompt

  prompts: (->
    prompts = @filter (prompt) ->
      prompt.get('selected') == true
    ).property('@each.selected')