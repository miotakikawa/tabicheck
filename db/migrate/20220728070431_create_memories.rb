class CreateMemories < ActiveRecord::Migration[5.2]
  def change
    create_table :memories do |t|
      t.string :title
      t.string :image_id
      t.text :body

      t.timestamps
    end
  end
end
