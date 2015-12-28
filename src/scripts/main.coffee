$ ->
  audio = $('#music')
  audio.bind 'timeupdate', ->
    d = $('#music')[0].currentTime
    console.log d
    if d >= 8.5
      $('.logo').addClass('animate')
    if d >= 13
      $('.story').addClass('animate')
    if d >= 85
      $('.stars').addClass('animate')
      $('.scene2').addClass('animate')

  audio.trigger('play')
