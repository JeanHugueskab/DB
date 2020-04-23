class BlogsUser < ApplicationRecord
   has_many :blog
    belongs_to :post_id
end
