class Comment < ActiveRecord::Base
  belongs_to :seeker
  belongs_to :post
end
