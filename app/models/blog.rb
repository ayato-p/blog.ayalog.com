class Blog < ActiveRecord::Base
  belongs_to :user
  has_many :posts, ->(o) {where user_id: o.user_id}
end
