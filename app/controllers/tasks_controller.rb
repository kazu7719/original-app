class TasksController < ApplicationController
  
    before_action :authenticate_user!, only: [:new, :edit,:destroy ]
    before_action :set_item, only: [:edit, :update, :destroy, :move_to_index ]
    before_action :move_to_index, only: [:edit, :destroy]
    
    def index
      @tasks = Task.all.order('created_at DESC')
    end
  
    def show
      
    end
  
    def new
      @task = Task.new
    end
  
    def create
      @task = Task.new(task_params)
      if @task.save
        redirect_to root_path
      else
        render :new, status: :unprocessable_entity
      end
    end
  
      def edit
        
      end
  
      def update
        
        if @task.update(task_params)
          redirect_to tasks_path
        else
          render :new, status: :unprocessable_entity
        end
      end
  
      def destroy
        
        @task.destroy
        redirect_to root_path
      end

      def events
        tasks = Task.all
      
        render json: tasks.map { |task|
          {
            id: task.id,
            title: task.name, # タスク名
            start: task.start_time, # カレンダーで使う開始日（Date or DateTime型）
            end: task.end_time      # 任意。表示の終了日がある場合のみ
          }
        }
      end
      
  
  private
  
  def task_params
     params.require(:task).permit(:task_name, :start_day, :schedule_end_day, :end_day ).merge(user_id: current_user.id)
  end
  
  def set_item
    @task = Task.find(params[:id])
  end
  
  def move_to_index
    @task = Task.find(params[:id])
    return if user_signed_in? && current_user.id == @task.user_id
  
    redirect_to action: :index
    
  end
  end
