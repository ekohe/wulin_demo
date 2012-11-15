class BlogersPostsScreen < WulinMaster::Screen
  title 'Blogers / Posts'

  path '/blogers'

  grid BlogerGrid, height: '50%', cell_editable: false
  grid PostGrid, height: '50%', cell_editable: false, master_grid: 'BlogerGrid'
end