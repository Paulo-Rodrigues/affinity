class ThoughtsController < ApplicationController
  def index
    @thoughts = Thought.all.limit(1)
  end
end
