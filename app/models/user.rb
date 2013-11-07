class User < ActiveRecord::Base
  has_one :blog
  has_many :posts, :through => :blog
  validates :name, presence: true, uniqueness: true
  has_secure_password
end
