class PublisherGrid < WulinMaster::Grid
  title 'Publishers'

  model Publisher   

  fill_window

  column :name

  load_default_actions # Add default toolbar items for this grid
end