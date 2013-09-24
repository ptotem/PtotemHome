@translate = (cipher)->
  Snippets.findOne({cipher: cipher, language: Session.get("language")}).content

@splitToFit = (textline) ->
  string_pieces = textline.split(" ")
  piece_count = string_pieces.length
  index = 0
  last_piece = 0
  broken_line = []
  while last_piece < piece_count
    if (last_piece + index) < piece_count
      part_pieces = []
      for i in [last_piece...last_piece+(index+2)]
        part_pieces.push(string_pieces[i])
      broken_line.push({line:part_pieces.join(" ")})
      if index < 2
        index = index + 1
        last_piece = last_piece + index + 1
      else
        index = index
        last_piece = last_piece + index + 2
    else
      broken_line.push({line: string_pieces[last_piece...piece_count].join(" ")})
      last_piece = piece_count
  return broken_line

@hatchShow = () ->
  $('.hsjs').css('display','inner-block').css('white-space','pre')
  $.each $('.hsjs'), ->
    t = $(this)
    t.wrap("<span class='hatchshow_temp' style='display:block'>")
    pw = t.parent().width()
    while( t.width() < pw && fontSize(t)<500)
      t.css('font-size', (fontSize(t)+1)+"px"); ->
        while( t.width() > pw )
          t.css('font-size', (fontSize(t)-.1)+"px")

@fontSize= (t)->
  return parseInt(t.css('font-size').replace('px',''))

@fitIt = () ->
  $.each $('.fitSpan'), ->
    $box = $(this)
    boxht= $box.parent().height()*0.8

    if boxht<50
      boxht = $box.parent().width()

    nWas = 0
    nTry = 5

    while ($box.height() < boxht)
      nWas = nTry
      nTry *= 1.2
      $box.css
        'font-size': "#{nTry}px"

    nTry = nWas

    while( nWas != nTry   &&   $box.height() < boxht)
      nWas = nTry
      nTry = Math.floor( nTry * 1.1 )
      $box.css
        'font-size': "#{nTry}px"

    $box.css
      'font-size': "#{nWas}px"
      'line-height': "#{nWas*1.2}px"