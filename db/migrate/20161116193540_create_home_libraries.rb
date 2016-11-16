class CreateHomeLibraries < ActiveRecord::Migration[5.0]
  def change
    create_table :home_libraries do |t|
      t.integer :user_id, presence: true
      t.integer :library_id, presence: true

      t.timestamps
    end
  end
end
