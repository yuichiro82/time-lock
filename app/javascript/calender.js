import { Calendar } from '@fullcalendar/core';
import dayGridPlugin from '@fullcalendar/daygrid';
import timeGridPlugin from '@fullcalendar/timegrid';
import listPlugin from '@fullcalendar/list';
import interactionPlugin from '@fullcalendar/interaction';

document.addEventListener('DOMContentLoaded', function() {
  var calendarEl = document.getElementById('calendar');
  eventSources: [
    {
      url: '/events.json',
      method: 'POST',
      extraParams: {
        custom_param1: 'something',
        custom_param2: 'somethingelse'
      },
      failure: function() {
        alert('there was an error while fetching events!');
      },
      color: 'yellow',   // a non-ajax option
      textColor: 'black' // a non-ajax option
    }
  ]
  var calendar = new Calendar(calendarEl, {
    plugins: [ dayGridPlugin, timeGridPlugin, listPlugin, interactionPlugin ],
    initialView: 'dayGridMonth',
    selectable: true,
    events: '/events.json'
  });
  calendar.render();
});