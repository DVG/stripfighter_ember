StripfighterEmber.ComicController = Ember.ObjectController.extend(
  upvote: ->
    self = @
    id = self.get('id')
    StripfighterEmber.Auth.send(
      url: "/api/v1/comics/#{id}/upvote"
      type: "POST"
    )
    .done (response) ->
      self.updateScore(response.comic.score)

  downvote: ->
    self = @
    id = self.get('id')
    StripfighterEmber.Auth.send(
      url: "/api/v1/comics/#{id}/downvote"
      type: "POST"
    )
    .done (response) ->
      self.updateScore(response.comic.score)

  updateScore: (score) ->
    @.set('score', score)
)
