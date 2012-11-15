class HomepageController < WulinMaster::HomeController
  menu do |c|
    submenu 'Default' do
      item BlogerScreen
      item CountryScreen
      item PostScreen
    end
  end
end