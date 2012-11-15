class PostGrid < WulinMaster::Grid
  title 'Posts'

  model Post

  path '/posts'    

  fill_window

  column :title
  column :published_at
  column :content
  column :bloger

  action :add, only: [:PostScreen]
  action :delete, only: [:PostScreen]
  action :edit, only: [:PostScreen]
  action :filter
end