class Category < ActiveRecord::Base
  has_many :recipe
  has_many :ranking
end
