class Thoughts::LikesController < LikesController
  before_action :set_votable

  private

  def set_votable
    @votable = Thought.find(params[:thought_id])
  end
end
