jQuery ->
  if $('.updates-scroll').length
    $(window).scroll ->
      next_button = $('#next_button')
      prev_button = $('#prev_button')
      url = next_button.attr('href')

      if (next_button.length || prev_button.length) && $(window).scrollTop() > $(document).height() - $(window).height() - 150
        next_button.addClass('hidden')
        prev_button.addClass('hidden')
        $('.loading-info').removeClass('hidden')
      if url && $(window).scrollTop() > $(document).height() - $(window).height() - 2
        $('.pagination').html("<div class='loading-info'><i class='fa fa-spinner fa-pulse fa-2x'></i></div>")
        $.getScript(url)
    $(window).scroll()

    popover = $('.scroll-help-popover')
    $('.scroll-help').on 'click', (e) ->
      e.stopPropagation()
      if popover.hasClass('hidden')
        popover.removeClass('hidden')
        $(document).on 'click', ->
          popover.addClass('hidden')
      else
        popover.addClass('hidden')
