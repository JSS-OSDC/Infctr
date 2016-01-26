class AddDescriptionToNotifs < ActiveRecord::Migration
  def change
  	add_column :Notif, :description, :string
  end
end
