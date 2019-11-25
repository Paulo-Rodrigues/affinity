module Votable
  extend ActiveSupport::Concern

  def upvote(votable)
    votes.create(votable: votable, user_id: self.id, up: true, voted: true)
  end

  def downvote(votable)
    votes.create(votable: votable, user_id: self.id, down: true, voted: true)
  end

  def voted?(votable)
    find_vote(votable).exists?
  end

  def upvoted_resources
    Vote.where(user_id: self.id, up: true)
  end

  def downvoted_resources
    Vote.where(user_id: self.id, down: true)
  end

  private

  def find_vote(votable)
    Vote.where(votable_id: votable.id, user_id: self.id)
  end
end
