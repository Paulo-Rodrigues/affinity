class AddUpDownToVotes < ActiveRecord::Migration[6.0]
  def change
    add_column :votes, :up, :boolean, default: false
    add_column :votes, :down, :boolean, default: false
    add_column :votes, :voted, :boolean, default: false
  end
end
