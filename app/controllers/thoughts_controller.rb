class ThoughtsController < ApplicationController
  def index
    @thoughts = Thought.all.sample
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
      redirect_to dashboard_path
    else
      flash[:alert] = 'cannot create thought'
      render 'new'
    end
  end

  private

  def thought_params
    params.require(:thought).permit(:body)
  end
end
