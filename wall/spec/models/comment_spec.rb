require 'rails_helper'

RSpec.describe Comment, type: :model do
	context "with valid attributes" do 
		it "Should save" do 
			User.create(name: "Cameron", id: 5,)
			Message.create(con)
      cmt = Comment.new(content: "This is a Comment.", user_id: 5,)
      expect(msg).to be_valid
  end
end
