class AddTitleToNotif < ActiveRecord::Migration
  def change
  	add_column :Notif,:title, :string
  end
end
