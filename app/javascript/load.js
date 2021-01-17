var calendar = new Calendar(calendarEl, {
  var c
  headerToolbar: { center: 'dayGridMonth,timeGridWeek' }, // buttons for switching between views

  views: {
    dayGridMonth: { // name of view
      titleFormat: { year: 'numeric', month: '2-digit', day: '2-digit' }
      // other view-specific options here
    }
  }
});