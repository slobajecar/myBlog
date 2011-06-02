class BlogEntry < ActiveRecord::Base
  has_many :comment
end
