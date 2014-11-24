$(document).ready ->
  $("#calendar").fullCalendar
    left: "prev,next,today"
    center: "title"
    right: "month,agendaWeek,agendaDay"
    defaultView: "month"
    height: 500
    slotMinutes: 15
    events: '/schedules.json'
    eventColor: 'yellow'

  return