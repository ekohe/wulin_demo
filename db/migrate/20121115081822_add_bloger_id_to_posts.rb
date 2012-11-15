class AddBlogerIdToPosts < ActiveRecord::Migration
  def change
    add_column :posts, :bloger_id, :integer
  end
end
