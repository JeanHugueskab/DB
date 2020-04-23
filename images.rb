class Images < ApplicationRecord
 belongs_to :post_id
  belongs_to :user_id
  belongs_to :blogs_user
end
