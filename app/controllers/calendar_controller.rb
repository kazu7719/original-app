class CalendarController < ApplicationController
  def index
  end

  def events
    projects = Project.all
    tasks = Task.all
    habits = Habit.all # ← 習慣のデータも取得

    project_events = projects.map do |project|
      {
        title: project.project_name,
        start: project.start_day,
        end: project.end_day,
        className: "project-event"
      }
    end

    task_events = tasks.map do |task|
      {
        title: task.task_name,
        start: task.start_day,
        end: task.end_day,
        className: "task-event"
      }
    end

    habit_events = habits.map do |habit|
      {
        title: habit.habit_name,
        start: habit.start_day,
        className: "habit-event"
      }
    end

    render json: project_events + task_events + habit_events
  end
end

