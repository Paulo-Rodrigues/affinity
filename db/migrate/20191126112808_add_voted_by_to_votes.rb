class AddVotedByToVotes < ActiveRecord::Migration[6.0]
  def change
    add_column :votes, :voted_by, :integer
  end
end
