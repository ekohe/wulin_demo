class BlogerGrid < WulinMaster::Grid
  title 'Blogers'

  model Bloger

  path '/blogers'    

  fill_window

  column :name
  column :age
  column :country

  load_default_actions # Add default toolbar items for this grid
end