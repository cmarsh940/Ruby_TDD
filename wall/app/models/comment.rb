class Comment < ActiveRecord::Base
  belongs_to :user
  belongs_to :message
  validates :content, :user_id, :message_id, presence: true 
	validates :content, length: { minimum: 10 }
end
