class AddEctsToUsers < ActiveRecord::Migration
  def change
    add_column :users, :ects, :string
  end
end
