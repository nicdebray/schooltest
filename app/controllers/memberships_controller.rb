class MembershipsController < ApplicationController
  before_action :membership_find, only: [:edit, :update, :destroy]
  before_action :set_student, only: [:index, :new, :edit]
  before_action :set_course, only: [:index, :new, :edit]

  def index
    @memberships = current_user.memberships.all
  end

  def new
    @membership = Membership.new
  end

  def create
    @membership = Membership.new(membership_params)
    @membership.user_id = current_user.id
    if @membership.save!
      redirect_to memberships_path
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @membership.update(membership_params)
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
    params.require(:membership).permit(:student_id, :course_id, :unique_membership_index, :user_id)
  end

  def set_student
    @student = Student.find_by(id: params[:student_id])
  end

  def set_course
    @course = Course.find_by(id: params[:course_id])
  end

end
