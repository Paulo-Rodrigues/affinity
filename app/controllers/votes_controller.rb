class VotesController < ApplicationController
  def create
    if params[:upvote]
      current_user.upvote(@votable)
    else
      current_user.downvote(@votable)
    end

    redirect_to dashboard_path
  end
end
