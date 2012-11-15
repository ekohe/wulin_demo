class CreateBlogers < ActiveRecord::Migration
  def change
    create_table :blogers do |t|
      t.string :name
      t.integer :age
      t.integer :country_id

      t.timestamps
    end
  end
end