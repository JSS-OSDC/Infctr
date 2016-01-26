class CreateFollows < ActiveRecord::Migration
  def change
    create_table :follows do |t|
      t.string :email
      t.integer :notif_id

      t.timestamps null: false
    end
  end
end
