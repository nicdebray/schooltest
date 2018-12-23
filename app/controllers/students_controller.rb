class StudentsController < ApplicationController
  before_action :student_find, only: [:show, :edit, :update, :destroy]

  def index
  end

  def show
  end

  def new
  end

  def create
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private
  def student_params
    params.require(:student).permit(:first_name, :last_name)
  end

  def student_find
    @student = Student.find(params[:id])
  end
end
