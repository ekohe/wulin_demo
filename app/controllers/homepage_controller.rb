class HomepageController < WulinMaster::HomeController
  menu do |c|
    submenu 'Resources' do
      item BloggerScreen
      item CountryScreen
      item PostScreen
    end
    submenu 'Relation' do
      item BloggersPostsScreen
      item PublisherScreen
    end
  end
end