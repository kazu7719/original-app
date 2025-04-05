import { Calendar } from "fullcalendar"

document.addEventListener("DOMContentLoaded", function () {
  const calendarEl = document.getElementById("calendar");

  if (calendarEl) {
    const calendar = new Calendar(calendarEl, {
      initialView: 'dayGridMonth',
      events: '/events',
      headerToolbar: {
        left: 'prev,next today',
        center: 'title',
        right: 'dayGridMonth,timeGridWeek,listDay'
      }
    });

    calendar.render();
  }
});
