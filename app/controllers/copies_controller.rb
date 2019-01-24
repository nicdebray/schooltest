class CopiesController < ApplicationController
  before_action :copy_find, only: [:edit, :update, :destroy]

  def index
    @copies = current_user.copies.all
  end

  def new
    @copy = Copy.new
  end

  def create
    @copy = Copy.new(copy_params)
    @copy.user_id = current_user.id
    if @copy.save!
      redirect_to copies_path
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @copy.update(copy_params)
      redirect_to copies_path
    else
      render :new
    end
  end

  def destroy
    if @copy.destroy
      redirect_to copies_path
    else
      render :new
    end
  end

  private

  def copy_find
    @copy = Copy.find(params[:id])
  end

  def copy_params
    params.require(:copy).permit(:student_id, :assignment_id, :user_id, :comment, :grade)
  end
end
