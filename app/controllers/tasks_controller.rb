class TasksController < ApplicationController

    def index
        @tasks = Task.all
    end

    def inform
        @tasks = Task.all
    end

    def new
        @tasks = Task.new

    end

    def create
        @tasks = Task.new(tasks_params)
        @tasks.save
        redirect_to tasks_path(@tasks)
    end
    def edit
      @tasks = Task.find(params[:id])
    end

    def update
        @tasks = Task.find(params[:id])
        @tasks.update(params[:tasks])
        redirect_to tasks_path(@tasks)
    end


    def destroy
        @restaurant = Restaurant.find(params[:id])
        @restaurant.destroy
    
        # no need for app/views/restaurants/destroy.html.erb
        redirect_to restaurants_path
    end
      private

  def tasks_params
    params.require(:task).permit(:title, :details)
  end
 


end