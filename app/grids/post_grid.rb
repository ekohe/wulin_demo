class PostGrid < WulinMaster::Grid
  title 'Posts'

  model Post

  path '/posts'    

  fill_window

  column :title
  column :published_at
  column :content

  load_default_actions # Add default toolbar items for this grid
end