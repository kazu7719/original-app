class CalendarController < ApplicationController
  def index
    
  end
  def events
    events = []

    current_user.projects.each do |project|
      events << {
        title: "プロジェクト: #{project.project_name}",
      start: project.start_day&.strftime("%Y-%m-%d"),
      end: project.schedule_end_day&.strftime("%Y-%m-%d"),
      color: "blue"
      }
    end


    render json: events
  end
end
