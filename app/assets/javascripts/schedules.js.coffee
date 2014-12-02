$(document).ready ->
  $("#calendar").fullCalendar
    events: '/schedules.json?search=' + $('#searchParam').html()
    eventRender: (event, element) ->
       element.css 'background-color','#0aa699' if event.status
       element.css 'background-color','#F22613' if !event.status
       element.find('.fc-time').hide();
       element.css 'height:50px';
       return
    eventColor: 'white'


  return