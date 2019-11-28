class SuggestionsService
  def initialize(user)
    @user = user
  end

  def call
    most_liked_users
  end

  private

  attr_reader :user

  def suggestions_ids
    upvoted = user.upvoted_resources
    thought_ids = upvoted.map(&:votable_id)
    thoughts = Thought.where(id: thought_ids)
    user_ids = thoughts.map(&:user_id)
    user_ids
  end

  def count_preferences(uids)
    preferences_hash = Hash.new(0)
    uids.each do |k,v|
      preferences_hash[k] += 1
    end
    preferences_hash
  end

  def most_liked
    most_liked = count_preferences(suggestions_ids)
    most_liked_hash = most_liked.select { |user, count| count >= 10 }
    most_liked_hash
  end

  def most_liked_ids
    liked_ids = most_liked
    liked_ids.keys
  end

  def most_liked_users
    user_ids = most_liked_ids
    User.where(id: user_ids)
  end
end
