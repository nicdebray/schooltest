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
    @teacher = Teacher.find(Teacher.last.id)
    @batch = Batch.find(Batch.last.id)
    @course = Course.new(course_params)
    @course.teacher = Teacher.find(Teacher.last.id)
    @course.batch = Batch.find(Batch.last.id)
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
    params.require(:course).permit(:name)
  end

  def course_find
    @teacher = Teacher.find(Teacher.last.id)
    @batch = Batch.find(Batch.last.id)
    @course = Course.find(params[:id])
  end
end
