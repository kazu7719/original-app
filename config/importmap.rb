pin "application"
pin "@hotwired/turbo-rails", to: "turbo.min.js", preload: true

# Stimulus 関連
pin "@hotwired/stimulus", to: "https://ga.jspm.io/npm:@hotwired/stimulus@3.2.2/dist/stimulus.js"
pin "@hotwired/stimulus-loading", to: "https://ga.jspm.io/npm:@hotwired/stimulus-loading@1.0.0/dist/stimulus-loading.js"
pin_all_from "app/javascript/controllers", under: "controllers"

# flatpickr
pin "flatpickr", to: "https://ga.jspm.io/npm:flatpickr@4.6.13/dist/flatpickr.js"

# FullCalendar 関連（Core + dayGrid）
pin "@fullcalendar/core", to: "https://cdn.skypack.dev/@fullcalendar/core@6.1.8"
pin "@fullcalendar/daygrid", to: "https://cdn.skypack.dev/@fullcalendar/daygrid@6.1.8"