class PublisherScreen < WulinMaster::Screen
  title 'Publishers'

  grid PublisherGrid, height: '50%'

  # Publisher/Blogger inclusion-exclusion
  grid BloggersPublisherGrid, height: '50%', width: '45%', title: 'Existing bloggers', include_of: 'PublisherGrid', eager_loading: false
  panel WulinMaster::InclusionExclusionPanel, height: '50%', width: '10%', inclusion_grid: 'BloggersPublisherGrid', exclusion_grid: 'BloggerGrid'
  grid BloggerGrid, height: '50%', width: '45%', title: 'Available bloggers', exclude_of: 'PublisherGrid', eager_loading: false
end