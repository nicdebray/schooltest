class AssignmentsController < ApplicationController
  before_action :assignment_find, only: [:show, :edit, :update, :destroy]

  def index
    @assignments = current_user.assignments.all
  end

  def show
  end

  def new
    @assignment = Assignment.new
  end

  def create
    @assignment = Assignment.new(assignment_params)
    @assignment.user = current_user
    if @assignment.save!
      redirect_to assignments_path
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @assignment.update(assignment_params)
      redirect_to assignments_path
    else
      render :new
    end
  end

  def destroy
    if @assignment.destroy
      redirect_to assignments_path
    else
      render :new
    end
  end

  private
  def assignment_params
    params.require(:assignment).permit(:title, :description, :course_id, :user_id, :date)
  end

  def assignment_find
    @assignment = Assignment.find(params[:id])
  end

end
