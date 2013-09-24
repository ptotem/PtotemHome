Handlebars.registerHelper 'translate', (cipher) ->
  return translate cipher

Handlebars.registerHelper 'times', (n, block) ->
  accum = ''
  for i in [0..n]
    accum += block.fn(i)
  return accum

Handlebars.registerHelper 'for', (from, to, incr, block) ->
  accum = ''
  for i in [from..to] by incr
    accum += block.fn(i)
  return accum