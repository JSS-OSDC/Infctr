class AddTagToNotifs < ActiveRecord::Migration
  def change
  	add_column :Notifs, :tag, :string
  end
end
