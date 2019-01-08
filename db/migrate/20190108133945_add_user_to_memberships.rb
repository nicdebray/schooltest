class AddUserToMemberships < ActiveRecord::Migration[5.2]
  def change
    add_reference :memberships, :user, foreign_key: true
  end
end
