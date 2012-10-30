class AddUniToUsers < ActiveRecord::Migration
  def change
    add_column :users, :uni, :boolean, default: false
  end
end
