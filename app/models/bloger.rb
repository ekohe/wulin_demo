class Bloger < ActiveRecord::Base
  attr_accessible :name, :age, :country_id  
  
  belongs_to :country
end