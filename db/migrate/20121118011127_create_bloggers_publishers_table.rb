class CreateBloggersPublishersTable < ActiveRecord::Migration
  def up
  	create_table :bloggers_publishers do |t|
  		t.integer :blogger_id
  		t.integer :publisher_id
  	end
  end

  def down
  	drop_table :bloggers_publishers
  end
end
