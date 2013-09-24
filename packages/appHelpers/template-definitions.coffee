# Squared Text Template
#----------------------------------------------------
Template.squaredText.lines = (text)->
  splitToFit(text)
Template.squaredText.rendered = ->
  hatchShow()
#----------------------------------------------------

# Fitted Text Template
#----------------------------------------------------
Template.fittedText.line = (text)->
  return {name: text}
Template.fittedText.rendered = ->
    fitIt()
#----------------------------------------------------