class Comment < ActiveRecord::Base
  belongs_to :post
  belongs_to :user
  attr_accessible :body, :user, :post

  validates :body, length: { minimum: 5 }, presence: true
  validates :post, presence: true
  validates :user, presence: true 

  default_scope order('created_at DESC') 
end
