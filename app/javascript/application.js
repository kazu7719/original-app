import "@hotwired/turbo-rails"
import { Calendar } from "fullcalendar"

function renderCalendar() {
  const el = document.getElementById("calendar");
  if (!el) return;

  const calendar = new Calendar(el, {
    initialView: "dayGridMonth",
    events: "/events" // ← calendar#events で統合したデータを取得
  });

  calendar.render();
}

document.addEventListener("DOMContentLoaded", renderCalendar);
document.addEventListener("turbo:load", renderCalendar);