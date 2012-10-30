class AddSemesterToUsers < ActiveRecord::Migration
  def change
    add_column :users, :semester, :boolean, default: false
  end
end
