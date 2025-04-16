pin "application"
pin "@hotwired/turbo-rails", to: "turbo.min.js", preload: true

# flatpickr
pin "flatpickr", to: "https://ga.jspm.io/npm:flatpickr@4.6.13/dist/flatpickr.js"

# FullCalendar 関連（Core + dayGrid）
pin "@fullcalendar/core", to: "https://cdn.skypack.dev/@fullcalendar/core@6.1.8"
pin "@fullcalendar/daygrid", to: "https://cdn.skypack.dev/@fullcalendar/daygrid@6.1.8"
pin "application"

pin "@fullcalendar/rrule", to: "https://cdn.skypack.dev/@fullcalendar/rrule@6.1.8"
pin "rrule", to: "https://cdn.skypack.dev/rrule@2.7.1"