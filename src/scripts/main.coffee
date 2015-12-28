$ ->


  audio = $('#music')
  audio.bind 'timeupdate', ->
    d = $('#music')[0].currentTime
    if d >= 0
      $('.logo').addClass('animate')
    if d >= 7
      $('.story').addClass('animate')
    if d >= 77
      $('.stars').addClass('animate')
      $('.scene2').addClass('animate')
      $('.square').addClass('animate')
    if d >= 107
#      val =$('.square').css('transform').split(",")[4]
#      if val >= -600
#        console.log val
      $('.square').css('animation-play-state','paused')
      $('.square').addClass('stop')
      $('.weapon').addClass("fire")
      $('.boom').addClass("animate")
    if d >= 116
      $('.endcopy').addClass("on")
#  setTimeout ->
#    audio.trigger('play')
#  ,8000


window.play = ->
  $('button').hide()
  audio1 = document.getElementById('music')
#  audio2 = document.getElementById('audio2')
  audio1.play()

  # this stream will immediately stop when the next line is run on iOS
#  audio2.play()
  # this will stop audio1 on iOS
  return

