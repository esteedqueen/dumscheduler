$(document).ready ->
  $("#calendar").fullCalendar
    events: '/schedules.json'
    eventRender: (event, element) ->
       element.css 'background-color','yellow' if event.status
       element.css 'background-color','red' if !event.status
       element.find('.fc-time').hide();
       return
    eventColor: 'white'

  return