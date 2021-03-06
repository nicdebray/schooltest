class StudentsController < ApplicationController
  before_action :student_find, only: [:show, :edit, :update, :destroy]

  def index
    if params[:search].present?
      sql_query = "first_name ILIKE :search OR last_name ILIKE :search"
      @students = current_user.students.where(sql_query, search: "%#{params[:search]}%")
    else
    @students = current_user.students.all
    end
  end

  def show
  end

  def new
    @student = Student.new
  end

  def create
    @student = Student.new(student_params)
    @student.user = current_user
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
    params.require(:student).permit(:first_name, :last_name, :batch_id, :photo)
  end

  def student_find
    @student = Student.find(params[:id])
  end
end
