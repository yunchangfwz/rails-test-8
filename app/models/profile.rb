class Profile < ActiveRecord::Base
  validates :user_id,  presence: true
  belongs_to :user
  has_many :comments, as: :commentable 
end
