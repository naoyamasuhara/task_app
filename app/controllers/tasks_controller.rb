class TasksController < ApplicationController
  before_action :set_task, only: [:show, :edit, :update, :destroy]

  def index
    @tasks = Task.all
  end

  def show
  end

  def new
    @task = Task.new
  end

  def edit
  end

  def create
    @task = Task.new(task_params)
    if @task.save
      flash[:success] = "タスク「#{@task.title}」を登録しました。"
      redirect_to tasks_path
    else
      render 'new'
    end
  end

  def update
    if @task.update(task_params)
      flash[:success] = "タスク「#{@task.title}」を更新しました。"
      redirect_to @task
    else
      render 'edit'
    end
  end

  def destroy
    @task.destroy
    flash[:danger] = "タスク「#{@task.title}」を削除しました。"
    redirect_to tasks_path
  end


  private

  def task_params
    params.require(:task).permit(:title,:content)
  end

  def set_task
    @task = Task.find(params[:id])
  end
end
