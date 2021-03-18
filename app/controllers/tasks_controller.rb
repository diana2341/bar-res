class TasksController < ApplicationController
  before_action :find_task, only: [:show, :edit, :destroy]
  def index
    @tasks=Task.all
  end

  def new
    @task=Task.new
  end

  def create
    @task=Task.new(task_params)
    @task.user=current_user
    if @task.save 
      flash[:notice]='Task created'
      redirect_to tasks_path
    else
      render 'new'
    end
  end

  def update
    @task=Task.find(params[:id])
    if @task.update(task_params)
      flash[:notice]='sucessfully updated!'
      redirect_to tasks_path
    else
      render 'edit'
    end
  end

  def edit
  end

  def destroy
    @task.destroy
    flash[:notice]='Deleted Task'
    redirect_to tasks_path 
  end
  private
  def find_task
    @task=Task.find(params[:id])
  end
  def task_params
    params.require(:task).permit(:task_name,:due_date)

  end
end
