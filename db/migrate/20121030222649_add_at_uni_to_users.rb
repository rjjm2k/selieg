class AddAtUniToUsers < ActiveRecord::Migration
  def change
    add_column :users, :at_uni, :string
  end
end
