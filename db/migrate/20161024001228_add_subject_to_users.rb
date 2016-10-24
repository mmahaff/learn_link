class AddSubjectToUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :subject, :text
  end
end
