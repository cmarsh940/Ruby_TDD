class User < ActiveRecord::Base
	has_many :messages, dependent: :destroy
	has_many :comments, through: :messages
	validates :username, uniqueness: { case_sensitive: false }, length: { minimum: 6 }, presence: true
end
