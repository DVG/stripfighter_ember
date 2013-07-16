StripfighterEmber.PromptsRoute = StripfighterEmber.AuthenticatedRoute.extend
  model: -> StripfighterEmber.Prompt.find()