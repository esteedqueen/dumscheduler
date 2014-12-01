$(document).ready(function() {
  var currentDate;
  $("#external-events div.external-event").each(function() {
    var eventObject;
    eventObject = {
      title: $.trim($(this).text())
    };
    $(this).data("eventObject", eventObject);
    $(this).draggable({
      zIndex: 999,
      revert: true,
      revertDuration: 0
    });
  });
  $("#calendar").fullCalendar({
    header: {
      left: "prev,next today",
      center: "title",
      right: "month,agendaWeek,agendaDay"
    },
    events: '/schedules.json',
    eventRender: function(event, element) {
      if (event.status) {
        element.css('background-color', '#F7CA18');
      }
      if (!event.status) {
        element.css('background-color', '#F22613');
      }
      element.find('.fc-time').hide();
    },
    eventColor: 'white',
    editable: true,
    droppable: true,
    drop: function(date, allDay) {
      var copiedEventObject, originalEventObject;
      originalEventObject = $(this).data("eventObject");
      copiedEventObject = $.extend({}, originalEventObject);
      copiedEventObject.start = date;
      copiedEventObject.allDay = allDay;
      $("#calendar").fullCalendar("renderEvent", copiedEventObject, true);
      if ($("#drop-remove").is(":checked")) {
        $(this).remove();
      }
    }
  });
  $(".fc-header").hide();
  currentDate = $("#calendar").fullCalendar("getDate");
  $("#calender-current-day").html($.fullCalendar.formatDate(currentDate, "dddd"));
  $("#calender-current-date").html($.fullCalendar.formatDate(currentDate, "MMM yyyy"));
  $("#calender-prev").click(function() {
    $("#calendar").fullCalendar("prev");
    currentDate = $("#calendar").fullCalendar("getDate");
    $("#calender-current-day").html($.fullCalendar.formatDate(currentDate, "dddd"));
    $("#calender-current-date").html($.fullCalendar.formatDate(currentDate, "MMM yyyy"));
  });
  $("#calender-next").click(function() {
    $("#calendar").fullCalendar("next");
    currentDate = $("#calendar").fullCalendar("getDate");
    $("#calender-current-day").html($.fullCalendar.formatDate(currentDate, "dddd"));
    $("#calender-current-date").html($.fullCalendar.formatDate(currentDate, "MMM yyyy"));
  });
  $("#change-view-month").click(function() {
    $("#calendar").fullCalendar("changeView", "month");
  });
  $("#change-view-week").click(function() {
    $("#calendar").fullCalendar("changeView", "agendaWeek");
  });
  $("#change-view-day").click(function() {
    $("#calendar").fullCalendar("changeView", "agendaDay");
  });
});
