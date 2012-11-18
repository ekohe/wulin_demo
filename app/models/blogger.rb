class Blogger < ActiveRecord::Base
  attr_accessible :name, :age, :country_id  
  
  belongs_to :country
  has_many :posts
  has_many :bloggers_publishers
  has_many :publishers, through: :bloggers_publishers
end