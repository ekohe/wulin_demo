class RenameBlogersTable < ActiveRecord::Migration
  def up
  	rename_table :blogers, :bloggers
  end

  def down
  	rename_table :bloggers, :blogers
  end
end
