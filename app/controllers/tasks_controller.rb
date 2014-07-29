class TasksController < ApplicationController

def splash
end

def add_tasks

end

def index
  end

def edit
end

def new
end

def show
  @task = Task.find(params[:id])
  end

def create
  @task = Task.new(task_params)
  @task.save
end

private
  def task_params
    params.require(:task).permit(:assignment, :points)
  end
end
