class AddVorlesungToUsers < ActiveRecord::Migration
  def change
    add_column :users, :vorlesung, :boolean, default: false
  end
end
