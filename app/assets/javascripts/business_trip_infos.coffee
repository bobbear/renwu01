# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
ready = ->
  $('.datepicker-field').datepicker({
    format: "yyyy-mm-dd",
    todayHighlight: true,
    language: "zh-CN",
    autoclose: true
  });
$(document).ready(ready)
$(document).on('page:load', ready)
