class MembershipsController < ApplicationController
  before_action :membership_find, only: [:destroy]

  def index
    @memberships = Membership.all
  end

  def new
    @membership = Membership.new
  end

  def create
    @membership = Membership.new
    @student = Student.find_by(params[:student_id])
    @course = Course.find_by(params[:course_id])
    @membership.student = @student
    @membership.course = @course
    if @membership.save!
      redirect_to memberships_path
    else
      render :new
    end
  end

  def destroy
    if @membership.destroy
      redirect_to memberships_path
    else
      render :new
    end
  end

  private
  def membership_find
    @membership = Membership.find(params[:id])
  end

  def membership_params
    params.require(:membership).permit(:student_id, :course_id)
  end

end
