class CreateBoards < ActiveRecord::Migration
  def change
    create_table :boards do |t|
      t.string :category

      t.timestamps null: false
    end
  end
end
