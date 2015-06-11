class CreateVotes < ActiveRecord::Migration
  def change
    create_table :votes do |t|
      t.integer :number
      t.integer :upvote
      t.integer :downvote

      t.timestamps null: false
    end
  end
end
