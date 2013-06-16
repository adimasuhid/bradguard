# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/

#creates recipients from existing field
#$("#new_recipient .btn").click 

$ ->

  $("#new_recipient").on "click", ".btn", (e)->
    e.preventDefault()
    list = $(".create-list select").val()
    $("#recipient_recipient_list_id").val(list)
    $("#new_recipient").submit()

