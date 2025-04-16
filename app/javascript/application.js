import "./controllers"
import "@hotwired/turbo-rails"
import { Calendar } from "@fullcalendar/core"
import dayGridPlugin from "@fullcalendar/daygrid"
import "@fullcalendar/daygrid/main.css"

// flatpickr は Stimulus controller 経由で読み込む（不要なら以下2行削除してもOK）
import flatpickr from "flatpickr"
import "flatpickr/dist/flatpickr.min.css"

function renderCalendar() {
  const el = document.getElementById("calendar");
  if (!el) return;

  const calendar = new Calendar(el, {
    plugins: [dayGridPlugin],
    initialView: "dayGridMonth",
    events: "/events"
  });

  calendar.render();
}

// ページ初回読み込みとTurbo遷移後に対応
document.addEventListener("DOMContentLoaded", renderCalendar);
document.addEventListener("turbo:load", renderCalendar);