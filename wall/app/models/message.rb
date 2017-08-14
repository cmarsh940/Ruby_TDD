class Message < ActiveRecord::Base
  belongs_to :user
  has_many :comments
  validates :content, :user_id, presence: true 
	validates :content, length: { minimum: 11}
end
