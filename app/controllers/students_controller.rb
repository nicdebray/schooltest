class StudentsController < ApplicationController
  before_action :student_find, only: [:show, :edit, :update, :destroy]

  def index
    @students = Student.all
  end

  def show
  end

  def new
    @student = Student.new
  end

  def create
    @batch = Batch.find(Batch.last.id)
    @student = Student.new(student_params)
    @student.batch = Batch.find(Batch.last.id)
    if @student.save
      redirect_to students_path
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @student.update(student_params)
      redirect_to students_path
    else
      render :new
    end
  end

  def destroy
    if @student.destroy
      redirect_to students_path
    else
      render :new
    end
  end

  private

  def student_params
    params.require(:student).permit(:first_name, :last_name)
  end

  def student_find
    @batch = Batch.find(Batch.last.id)
    @student = Student.find(params[:id])
  end
end
