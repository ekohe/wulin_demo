class BlogerGrid < WulinMaster::Grid
  title 'Blogers'

  model Bloger

  path '/blogers'    

  fill_window

  column :name
  column :age
  column :country

  action :add, only: [:BlogerScreen]
  action :delete, only: [:BlogerScreen]
  action :edit, only: [:BlogerScreen]
  action :filter
end