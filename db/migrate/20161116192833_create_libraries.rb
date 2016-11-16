class CreateLibraries < ActiveRecord::Migration[5.0]
  def change
    create_table :libraries do |t|
      t.string :name, presence: true
      t.string :phone
      t.string :zip
      t.string :city
      t.string :hours
    end
  end
end
