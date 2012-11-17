class Post < ActiveRecord::Base
  attr_accessible :title, :published_at, :content, :blogger_id
  
  belongs_to :blogger
end