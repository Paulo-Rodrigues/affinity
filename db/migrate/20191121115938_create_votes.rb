class CreateVotes < ActiveRecord::Migration[6.0]
  def change
    create_table :votes do |t|
      t.integer :votable_id
      t.string :votable_type
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
