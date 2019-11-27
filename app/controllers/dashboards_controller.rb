class DashboardsController < ApplicationController
  def index
    thoughts = Thought.where.not(id: current_user.all_voted)
    @thought = thoughts.sample
  end
end
