class Comment < ApplicationRecord
    belongs_to :user, class_name: 'User', foreign_key: "creator_id"
    belongs_to :post, class_name: 'Post', foreign_key: "post_id"
end