class CreateUsers < ActiveRecord::Migration[5.2]
 def change
    create_table :users do |t|
      t.string :name,  null: false
      t.string :email, null: false
      t.string :password, null: false
      t.string :password_confirmation, null: false
      t.string :password_digest, null: false
      t.string :remember_token,

      t.timestamps
    end
 end
end
