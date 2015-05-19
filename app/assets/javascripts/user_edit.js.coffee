jQuery ->
  if $('#profile').length
    container = $('.infinite_scroll_toggle')
    # if javascript is not supported, infinite scroll option is not displayed
    container.removeClass('hidden')
    checkbox = $('#user_infinite_scroll')

    container.on 'click', '.fa-toggle-on', (e) =>
      toggleIcon = $(e.target)
      toggleIcon.removeClass('fa-toggle-on').addClass('fa-toggle-off')
      checkbox.attr('checked', false)

    container.on 'click', '.fa-toggle-off', (e) =>
      toggleIcon = $(e.target)
      toggleIcon.removeClass('fa-toggle-off').addClass('fa-toggle-on')
      checkbox.attr('checked', true)
