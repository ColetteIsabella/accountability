class TasksController < ApplicationController

def splash
end

def add_tasks
  @tasks = Task.all
end

def index
end

def update
  @task = Task.find(params[:id])
  if @task.update(task_params)
    redirect_to @task
  else
    render "edit"
  end
end

def edit
  @task = Task.find(params[:id])
end

def new
  @post = Post.new
end

def show
  @task = Task.find(params[:id])
  end

def create
  @task = Task.new(task_params)
  @task.save
end

  def destroy
    @task = Task.find(params[:id])
    @task.destroy
    redirect_to tasks_path
  end
end

private
  def task_params
    params.require(:task).permit(:assignment, :points)
  end

