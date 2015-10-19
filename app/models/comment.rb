class Comment < ActiveRecord::Base
  validates :commentable_id, :commentable_type, presence: true
  validates :author_id, presence: true
  belongs_to :commentable, :polymorphic => true
end
