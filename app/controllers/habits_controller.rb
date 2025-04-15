class HabitsController < ApplicationController

  before_action :authenticate_user!, only: [:new, :edit,:destroy ]
  before_action :set_item, only: [:edit, :update, :destroy, :move_to_index ]
  before_action :move_to_index, only: [:edit, :destroy]
  
  def index
    @habits = Habit.all.order('created_at DESC')
  end

  def show
    
  end

  def new
    @habit = Habit.new
  end

  def create
    @habit = Habit.new(habit_params)
    if @habit.save
      redirect_to root_path
    else
      render :new, status: :unprocessable_entity
    end
  end

    def edit
      
    end

    def update
      
      if @habit.update(habit_params)
        redirect_to habits_path
      else
        render :new, status: :unprocessable_entity
      end
    end

    def destroy
      
      @habit.destroy
      redirect_to root_path
    end

    def events
      habits = Habit.all
    
      render json: habits.map { |habit|
        {
          id: habit.id,
          title: habit.name, # タスク名
        }
      }
    end
    

private

def habit_params
   params.require(:habit).permit(:habit_name,:start_day).merge(user_id: current_user.id)
end

def set_item
  @habit = Habit.find(params[:id])
end

def move_to_index
  @habit = Habit.find(params[:id])
  return if user_signed_in? && current_user.id == @habit.user_id

  redirect_to action: :index
  
end
  
end
