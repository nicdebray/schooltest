class AddUniqueMembershipIndexToMemberships < ActiveRecord::Migration[5.2]
  def change
    add_column :memberships, :unique_membership_index, :string
    add_index :memberships, [:course_id, :student_id], unique: true
  end
end
