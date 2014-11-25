$(document).ready ->
  $("#calendar").fullCalendar
    events: '/schedules.json'
    eventRender: (event, element) ->
       element.css 'background-color','#F7CA18' if event.status
       element.css 'background-color','#F22613' if !event.status
       element.find('.fc-time').hide();
       return
    eventColor: 'white'

  return