class CreateLists < ActiveRecord::Migration[5.2]
  def change
    create_table :lists do |t|
      t.string :place
      t.integer :date
      t.integer :gender
      t.integer :purpouse
      t.integer :weather
      t.string :bag
      t.timestamps
    end
  end
end
