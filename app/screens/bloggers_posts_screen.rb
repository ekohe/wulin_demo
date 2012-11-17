class BloggersPostsScreen < WulinMaster::Screen
  title 'Bloggers / Posts'

  path '/bloggers'

  grid BloggerGrid, height: '50%', cell_editable: false
  grid PostGrid, height: '50%', cell_editable: false, master_grid: 'BloggerGrid'
end