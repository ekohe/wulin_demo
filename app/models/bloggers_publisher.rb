class BloggersPublisher < ActiveRecord::Base
  belongs_to :blogger
  belongs_to :publisher
end