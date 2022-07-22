class CreateLists < ActiveRecord::Migration[5.2]
  def change
    create_table :lists do |t|
      t.string :place
      t.string :date
      t.integer :gender
      t.integer :purpouse
      t.integer :weather

      t.timestamps
    end
  end
end
