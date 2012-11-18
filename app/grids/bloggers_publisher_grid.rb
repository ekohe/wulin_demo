class BloggersPublisherGrid < WulinMaster::Grid

  model BloggersPublisher

  cell_editable false

  column :blogger
  
  action :filter
end