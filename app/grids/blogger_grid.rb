class BloggerGrid < WulinMaster::Grid
  title 'Bloggers'

  model Blogger  

  fill_window

  column :name
  column :age
  column :country

  action :add, only: [:BloggerScreen]
  action :delete, only: [:BloggerScreen]
  action :edit, only: [:BloggerScreen]
  action :filter
  
  action :show_info, title: "Information", icon: 'wizard'
  behavior :say_hello, only: [:BloggerScreen]
end