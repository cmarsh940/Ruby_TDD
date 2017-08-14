require 'rails_helper'

RSpec.describe Message, type: :model do
  context "With valid attributes" do
    it "should save" do
      User.create(name: "Cameron", id: 3)
      msg = Message.new(content: "This is a great message.", user_id: 3)
      expect(msg).to be_valid
    end
  end

  context "With invalid attributes" do
    it "should not save if content field is blank" do
      User.create(name: "Cameron", id: 3)
      msg = Message.new(content: "", user_id: 3)
      expect(msg).to be_invalid
    end

    it "should not save if content field is 10 characters or less" do
      User.create(name: "Cameron", id: 3)
      msg = Message.new(content: "This is...", user_id: 3)
      expect(msg).to be_invalid
    end

    it "should not save if user reference is blank" do
      msg = Message.create(content: "This is a message.", user_id: "")
      expect(msg).to be_invalid
    end
  end
end