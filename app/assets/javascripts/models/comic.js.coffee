StripfighterEmber.Comic = DS.Model.extend
  title: DS.attr('string')
  prompt_one: DS.belongsTo('StripfighterEmber.Prompt')
  prompt_two: DS.belongsTo('StripfighterEmber.Prompt')
