# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
$ ->
  (new WOW).init()
  $('form').on 'change', 'input[type="file"]', (e) ->
    $('#thumbnail').remove()
    file = e.target.files[0]
    reader = new FileReader
    $preview = $('.preview')
    t = this
    if file.type.indexOf('image') < 0
      return false
    reader.onload = do (file) ->
      (e) ->
        $preview.empty()
        $preview.append $('<img>').attr(
          src: e.target.result
          class: 'topixInput__image'
          title: file.name
          id: 'preview')
        return
    reader.readAsDataURL file
    return
  $('#reset').on 'click', ->
    $('#preview').remove()
    $('#thumbnail').remove()
    $('#picture_image_cache').val ''
    return
  return

# ---
# generated by js2coffee 2.2.0
