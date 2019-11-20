class DashboardsController < ApplicationController
  def index
    @thoughts = Thought.all.sample
  end
end
