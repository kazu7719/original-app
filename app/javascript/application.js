import "@hotwired/turbo-rails"
import { Calendar } from "@fullcalendar/core"
import dayGridPlugin from "@fullcalendar/daygrid"
import flatpickr from "flatpickr"
import "./controllers"

function renderCalendar() {
  const el = document.getElementById("calendar");
  if (!el) return;

  const calendar = new Calendar(el, {
    plugins: [dayGridPlugin],  // ← これがないと表示されない
    initialView: "dayGridMonth",
    events: "/events"
  });

  calendar.render();
}

document.addEventListener("DOMContentLoaded", renderCalendar)
document.addEventListener("turbo:load", renderCalendar)
