class AddAbstractToNotifs < ActiveRecord::Migration
  def change
  	add_column :Notifs, :abstract, :string
  end
end
