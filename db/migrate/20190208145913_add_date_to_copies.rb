class AddDateToCopies < ActiveRecord::Migration[5.2]
  def change
    add_column :copies, :date, :datetime
  end
end
