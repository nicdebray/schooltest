class CoursesController < ApplicationController
  before_action :course_find, only: [:show, :edit, :update, :destroy]

  def index
    @courses = Course.all
  end

  def show
  end

  def new
    @course = Course.new
  end

  def create
    @course = Course.new(course_params)
    if @course.save
      redirect_to courses_path
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @course.update(course_params)
      redirect_to courses_path
    else
      render :new
    end
  end

  def destroy
    if @course.destroy
      redirect_to courses_path
    else
      render :new
    end
  end

  private

  def course_params
    params.require(:course).permit(:name, :teacher_id, :batch_id)
  end

  def course_find
    @course = Course.find(params[:id])
  end
end
