class CountryGrid < WulinMaster::Grid
  title 'Countries'

  model Country

  path '/countries'    

  fill_window

  column :code
  column :name

  load_default_actions # Add default toolbar items for this grid
end