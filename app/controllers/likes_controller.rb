class LikesController < ApplicationController
  def create
    current_user.like(@votable)

    redirect_to dashboard_path
  end
end
