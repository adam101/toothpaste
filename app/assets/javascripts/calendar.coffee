$(document).ready ->
  $calendar = $('#calendar')
  eventsUrl = $calendar.data('events-url')

  return unless $calendar.length > 0

  $calendar.fullCalendar({
    header: {
      left: 'prev,next today',
      center: 'title',
      right: 'month,agendaWeek,agendaDay'
    }
    eventLimit: true
    events: eventsUrl
  })
