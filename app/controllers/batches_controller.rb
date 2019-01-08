class BatchesController < ApplicationController
  before_action :batch_find, only: [:show, :edit, :update, :destroy]

  def index
    @batches = current_user.batches.all
  end

  def show
  end

  def new
    @batch = Batch.new
  end

  def create
    @batch = Batch.new(batch_params)
    @batch.user = current_user
    if @batch.save
      redirect_to batches_path
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @batch.update(batch_params)
      redirect_to batches_path
    else
      render :new
    end
  end

  def destroy
    if @batch.destroy
      redirect_to batches_path
    else
      render :new
    end
  end

  private

  def batch_params
    params.require(:batch).permit(:name)
  end

  def batch_find
    @batch = Batch.find(params[:id])
  end
end
