class TeachersController < ApplicationController
  before_action :teacher_find, only: [:show, :edit, :update, :destroy]

  def index
    @teachers = current_user.teachers.all
  end

  def show
  end

  def new
    @teacher = Teacher.new
  end

  def create
    @teacher = Teacher.new(teacher_params)
    @teacher.user = current_user
    if @teacher.save
      redirect_to teachers_path
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @teacher.update(teacher_params)
      redirect_to teachers_path
    else
      render :new
    end
  end

  def destroy
    if @teacher.destroy
      redirect_to teachers_path
    else
      render :new
    end
  end

  private
  def teacher_params
    params.require(:teacher).permit(:first_name, :last_name)
  end

  def teacher_find
    @teacher = Teacher.find(params[:id])
  end
end
