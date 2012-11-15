class Post < ActiveRecord::Base
  attr_accessible :title, :published_at, :content, :bloger_id
  
  belongs_to :bloger
end