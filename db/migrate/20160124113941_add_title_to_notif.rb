class AddTitleToNotif < ActiveRecord::Migration
  def change
  	add_column :Notifs,:title, :string
  end
end
