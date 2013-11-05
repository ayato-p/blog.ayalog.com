class Post < ActiveRecord::Base
  belongs_to :user
  belongs_to :blog
  has_many :categorizations
  has_many :categories, :through => :categorizations
end
