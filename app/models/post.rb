class Post < ActiveRecord::Base
  attr_accessible :title, :published_at, :content  
end