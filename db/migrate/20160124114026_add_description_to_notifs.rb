class AddDescriptionToNotifs < ActiveRecord::Migration
  def change
  	add_column :Notifs, :description, :string
  end
end
