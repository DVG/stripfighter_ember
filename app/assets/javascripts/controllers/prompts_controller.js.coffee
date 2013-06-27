StripfighterEmber.PromptsController = Ember.ArrayController.extend

  timerLength: 3602000 #5400000, # 90 minutes
  timer: false
  promptsDrawn: false
  challengeAccepted: false
  heckle: null

  drawPrompts: ->
    @setEach('selected', false)
    @.selectPrompt()
    @.selectPrompt()

  selectPrompt: ->
    pool = @rejectProperty('selected')
    prompt = pool[Math.floor(Math.random()*pool.length)]
    prompt.set('selected', true)
    @set('promptsDrawn', true)
    prompt

  beginChallenge: ->
    @set 'challengeAccepted', true
    fade_time = 600
    controller = @
    $('.js-ready').fadeIn fade_time, ->
      $('.js-ready').fadeOut fade_time, ->
        $('.js-set').fadeIn fade_time, ->
          $('.js-set').fadeOut fade_time, ->
            $('.js-art').fadeIn fade_time, ->
              $('.js-art').fadeOut fade_time*2, ->
                controller.startTimer()
  
  startTimer: ->
    @.set('timer', true)
    controller = @
    time = setInterval( ->
      length = controller.get('timerLength')     
      controller.set('timerLength', (length - 1000))
      if controller.get('timerLength') <= 0
        clearInterval(time)
    , 1000)


  padDigit: (num, width) ->
    str = "#{num}"
    while str.length < width
      str = "0#{str}"
    str

  timerTimeRemaining: (->
    length = @.get('timerLength')
    seconds = length / 1000
    numhours = Math.floor(((seconds % 31536000) % 86400) / 3600)
    numminutes = Math.floor((((seconds % 31536000) % 86400) % 3600) / 60)
    numseconds = (((seconds % 31536000) % 86400) % 3600) % 60
    "#{@.padDigit(numhours, 2)}:#{@.padDigit(numminutes, 2)}:#{@.padDigit(numseconds, 2)}"
    ).property('timerLength')

  heckle: (->
    length = @.get('timerLength')
    if length in [3590000..3600000]
      "ARTIST, you have 45 minutes. Or you will in 15 minutes. You have an hour"
    else
      null
  ).property('timerLength')

  prompts: (->
    prompts = @filter (prompt) ->
      prompt.get('selected') == true
    ).property('@each.selected')