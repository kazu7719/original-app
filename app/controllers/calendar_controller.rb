class CalendarController < ApplicationController
  def events
    events = []

    # タスク（例）
    Task.all.each do |task|
      events << {
        title: "タスク: #{task.title}",
        start: task.due_date.strftime("%Y-%m-%dT%H:%M:%S"),
        color: "red"
      }
    end

    # プロジェクト（例）
    Project.all.each do |project|
      events << {
        title: "プロジェクト: #{project.title}",
        start: project.start_date.strftime("%Y-%m-%d"),
        end: project.end_date.strftime("%Y-%m-%d"),
        color: "blue"
      }
    end

    # 習慣（例：今日の分だけ）
    Habit.all.each do |habit|
      events << {
        title: "習慣: #{habit.title}",
        start: Time.zone.today.to_s + "T" + habit.time.strftime("%H:%M:%S"),
        color: "green"
      }
    end

    render json: events
  end
end
