class HomepageController < WulinMaster::HomeController
  menu do |c|
    submenu 'Resources' do
      item BlogerScreen
      item CountryScreen
      item PostScreen
    end
    submenu 'Relation' do
      item BlogersPostsScreen
    end
  end
end