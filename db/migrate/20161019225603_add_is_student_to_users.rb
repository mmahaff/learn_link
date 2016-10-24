class AddIsStudentToUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :is_student, :boolean, null: false
  end
end
