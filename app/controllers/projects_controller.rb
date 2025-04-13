class ProjectsController < ApplicationController
  before_action :authenticate_user!, only: [:new, :edit,:destroy ]
  before_action :set_item, only: [:edit, :update, :destroy, :move_to_index ]
  before_action :move_to_index, only: [:edit, :destroy]
  def index
    @projects = Project.all.order('created_at DESC')
  end

  def show
    
  end

  def new
    @project = Project.new
  end

  def create
    @project = Project.new(project_params)
    if @project.save
      redirect_to root_path
    else
      render :new, status: :unprocessable_entity
    end
  end

    def edit
      
    end

    def update
      
      if @project.update(project_params)
        redirect_to projects_path
      else
        render :new, status: :unprocessable_entity
      end
    end

    def destroy
      
      @project.destroy
      redirect_to root_path
    end
    

private

def project_params
   params.require(:project).permit(:project_name, :start_day, :schedule_end_day, :end_day, :memo).merge(user_id: current_user.id)
end

def set_item
  @project = Project.find(params[:id])
end

def move_to_index
  @project = Project.find(params[:id])
  return if user_signed_in? && current_user.id == @project.user_id

  redirect_to action: :index
  
end

end