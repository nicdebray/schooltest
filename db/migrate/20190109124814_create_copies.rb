class CreateCopies < ActiveRecord::Migration[5.2]
  def change
    create_table :copies do |t|
      t.float :grade
      t.text :comment
      t.references :user, foreign_key: true
      t.references :assignment, foreign_key: true
      t.references :student, foreign_key: true

      t.timestamps
    end
  end
end
