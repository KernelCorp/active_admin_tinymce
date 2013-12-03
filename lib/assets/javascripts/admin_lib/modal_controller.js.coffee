class window.ModalController
  self: null
  ed: null
  constructor: (ed)->
    if @self == null
      $('.collection-image').off 'click'
      $('.collection-image').click @select_image
      $('.action-ok').click @on_modal_ok
      ModalController::ed = ed
      ModalController::self = @
    else
      ModalController::ed = ed
    return
  select_image: ->
    $('.collection-image.active').removeClass('active')
    $(this).addClass('active')
    return
  on_modal_ok: ->
    if $('.collection-image.active').length > 0
      src = $('.active').data('original')
      ModalController::ed.selection.setContent('<img style="float: left" src='+src+'>')
      modal.close()
    return

window.create_modal_obj = (ed)->
  new ModalController ed
  return
