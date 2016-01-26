class AddAbstractToNotifs < ActiveRecord::Migration
  def change
  	add_column :Notif, :abstract, :string
  end
end
