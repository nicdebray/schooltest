class AddDateToAssignments < ActiveRecord::Migration[5.2]
  def change
    add_column :assignments, :date, :datetime
  end
end
