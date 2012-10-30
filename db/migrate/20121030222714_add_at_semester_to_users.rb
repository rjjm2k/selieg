class AddAtSemesterToUsers < ActiveRecord::Migration
  def change
    add_column :users, :at_semester, :string
  end
end
