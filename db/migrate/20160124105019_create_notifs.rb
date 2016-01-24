class CreateNotifs < ActiveRecord::Migration
  def change
    create_table :notifs do |t|

      t.timestamps null: false
    end
  end
end
