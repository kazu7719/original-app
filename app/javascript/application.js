import "@hotwired/turbo-rails"
import { Calendar } from "fullcalendar"

function renderCalendar() {
  const el = document.getElementById("calendar");
  if (!el) return; // カレンダーが存在する画面だけで実行

  const calendar = new Calendar(el, {
    initialView: "dayGridMonth",
    events: "/events"
  });

  calendar.render();
}

// ページ初回読み込み用
document.addEventListener("DOMContentLoaded", renderCalendar);

// Turbo遷移後の再読み込みにも対応
document.addEventListener("turbo:load", renderCalendar);