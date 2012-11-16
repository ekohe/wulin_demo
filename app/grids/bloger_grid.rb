class BlogerGrid < WulinMaster::Grid
  title 'Blogers'

  model Bloger  

  fill_window

  column :name
  column :age
  column :country

  action :add, only: [:BlogerScreen]
  action :delete, only: [:BlogerScreen]
  action :edit, only: [:BlogerScreen]
  action :filter
  
  action :show_info, title: "Information", icon: 'wizard'
  behavior :say_hello, only: [:BlogerScreen]
end