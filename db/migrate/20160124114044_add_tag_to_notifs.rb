class AddTagToNotifs < ActiveRecord::Migration
  def change
  	add_column :Notif, :tag, :string
  end
end
