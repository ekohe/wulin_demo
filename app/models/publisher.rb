class Publisher < ActiveRecord::Base
  attr_accessible :name  

  has_many :bloggers_publishers
  has_many :bloggers, through: :bloggers_publishers
end