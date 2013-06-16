$ ->

  $("#new_monitored_email").on "click", ".btn", (e)->
    e.preventDefault()
    list = $(".monitored_email select").val()
    $("#monitored_email_recipient_list_id").val(list)
    $("#new_monitored_email").submit()
