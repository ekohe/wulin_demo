class PostGrid < WulinMaster::Grid
  title 'Posts'

  model Post

  path '/posts'    

  fill_window

  column :title
  column :published_at
  column :content
  column :blogger

  action :detail_add, title: 'Add', icon: 'add', only: [:BloggersPostsScreen]
  action :add, only: [:PostScreen]
  action :delete, only: [:PostScreen]
  action :edit, only: [:PostScreen]
  action :filter
end