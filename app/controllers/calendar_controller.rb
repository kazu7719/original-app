class CalendarController < ApplicationController
  def index
  end

  def events
    projects = Project.all
    tasks = Task.all
    habits = Habit.all

    project_events = projects.map do |project|
      {
        title: project.project_name,
        start: project.start_day,
        end: project.schedule_end_day.present? ? project.schedule_end_day + 1.day : nil,
        className: "project-event",
        allDay: true
      }
    end

    task_events = tasks.map do |task|
      {
        title: task.task_name,
        start: task.start_day,
        end: task.schedule_end_day.present? ? task.schedule_end_day + 1.day : nil,
        className: "task-event",
        allDay: true
      }
    end

    habit_events = habits.map do |habit|
      {
        title: habit.habit_name,
        rrule: {
          freq: 'daily',
          dtstart: habit.start_day.to_date.iso8601
        },
        className: "habit-event",
        allDay: true
      }
    end

    render json: project_events + task_events + habit_events
  end
end
