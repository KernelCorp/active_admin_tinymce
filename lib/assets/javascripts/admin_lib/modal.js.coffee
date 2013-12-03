class window.Modal
  constructor: ->
    @bind_close()
    return

  bind_close: ->
    $('.close').click =>
      @close()
      return
    return

  on_show: (handler)->
    if handler != undefined
      handler.call()
    return

  open: ()->
    $('#modal').show "fast", =>
      @on_show()
      return
    $('body').append('<div class="shadow"> </div>')
    $('.shadow').click =>
      @close()
    return
  close: ()->
    $('#modal').hide('fast')
    $('.shadow').remove()
    return