class MembershipsController < ApplicationController
  before_action :membership_find, only: [:edit, :update, :destroy]

  def index
    @memberships = Membership.all
  end

  def new
    @membership = Membership.new
  end

  def create
    @membership = Membership.new(membership_params)
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
    params.require(:membership).permit(:student_id, :course_id, :unique_membership_index)
  end

end
