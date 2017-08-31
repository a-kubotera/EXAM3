# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
$ ->
  $('#commentMsg').submit ->
    name = $('#name').val()
    if name.length == 0
      alert '名前を入力してください。'
      return false
    return
  return
