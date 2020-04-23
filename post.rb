class Post < ApplicationRecord
  belongs_to :blog_users
  has_many :tag
end
