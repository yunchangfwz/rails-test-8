class Comment < ActiveRecord::Base

  validates :user_id,         presence: true 
  validates :commentable_id,  presence: true 
  validates :message,         presence: true 

  belongs_to :commentable, polymorphic: true
  belongs_to :user
  
  default_scope { order(id: :asc) }
end
