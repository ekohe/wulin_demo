class RenameBlogerIdInPostsTable < ActiveRecord::Migration
  def up
  	rename_column :posts, :bloger_id, :blogger_id
  end

  def down
  	rename_column :posts, :blogger_id, :bloger_id
  end
end
