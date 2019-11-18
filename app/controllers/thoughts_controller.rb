class ThoughtsController < ApplicationController
  before_action :find_thought, only: [:show, :edit, :update, :destroy]

  def show
  end

  def new
    @thought = Thought.new
    @thought.user = current_user
  end

  def create
    @thought = Thought.create(thought_params)
    @thought.user = current_user
    
    if @thought.save
      flash[:notice] = "Created thought"
      redirect_to @thought
    else
      flash[:alert] = 'cannot create thought'
      render 'new'
    end
  end

  def edit
  end

  def update
    if @thought.update(thought_params)
      flash[:notice] = 'Update thought'
      redirect_to @thought
    else
      flash[:alert] = 'cannot update'
      render 'edit'
    end
  end

  def destroy
    @thought.destroy
    flash[:notice] = 'Deleted thought'
    redirect_to dashboard_path
  end

  private

  def find_thought
    @thought = Thought.find(params[:id])
  end

  def thought_params
    params.require(:thought).permit(:body)
  end
end
