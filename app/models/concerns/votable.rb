module Votable
  extend ActiveSupport::Concern

  def upvote(votable)
    votes.create(votable: votable, user_id: self.id)
  end

  def downvote(votable)
    to_unlike = find_vote(votable)
    votes.delete(to_unlike)
  end

  def liked?(votable)
    find_vote(votable).exists?
  end

  private

  def find_vote(votable)
    Vote.where(votable_id: votable.id, user_id: self.id)
  end
end
