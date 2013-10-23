class Topic < ActiveRecord::Base
  attr_accessible :description, :name, :public
  has_many :posts
  scope :visible_to, lambda { |user| user ? scoped : where(public: true) }
end
