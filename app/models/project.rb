class Project < ApplicationRecord
  
belongs_to :user

validates :project_name, presence:true
validates :start_day, presence:true
validates :schedule_end_day, presence:true
validates :memo, presence:true

end
