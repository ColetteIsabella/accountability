class TasksController < ApplicationController

def add_tasks
  @tasks = Task.all
end

def index
end

def update
  @task = Task.find(params[:id])
  if @task.update(task_params)
    redirect_to (@task)
  else
    render :edit
  end
end

def edit

end

def new

end

def show

  end

def create
  @task = Task.new(task_params)
  @task.save
end

  def destroy

  end
end
private
  def task_params
    params.require(:task).permit(:assignment, :points)
  end


