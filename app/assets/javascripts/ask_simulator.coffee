$(document).ready ->
  $('.messages .message:last').css(display: 'none')
  $('.messages').scrollTop($('.messages')[0].scrollHeight)
  $('.messages .message:last').show().addClass('animated slideInLeft')
  $('.messages').scrollTop($('.messages')[0].scrollHeight)

  return