import { Calendar } from "https://cdn.skypack.dev/fullcalendar@6.1.8"

document.addEventListener("DOMContentLoaded", () => {
  const calendarEl = document.getElementById("calendar");
  if (!calendarEl) return;

  const calendar = new Calendar(calendarEl, {
    initialView: 'dayGridMonth',
    events: [],
  });

  calendar.render();
});