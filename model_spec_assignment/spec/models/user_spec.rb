require 'rails_helper'
RSpec.describe User do
  # This is our control
  context "With valid attributes" do 
    it "should save" do 
      user = User.new(
        first_name: 'Cam',
        last_name: 'Marshall',
        email: 'cam@cam.cam'
      )
      expect(user).to be_valid
    end
  end
  
  context "With invalid attributes" do 
    it "should not save if first_name field is blank" do
      user = User.new(
            first_name: '', 
            last_name: 'Marshall', 
            email: 'cam@cam.cam'
        )
      expect(user).to be_invalid
    end
    
    it "should not save if last_name field is blank"
	    user = User.new(
	            first_name: 'Cam',
	            last_name: '',
	            email: 'cam@cam.cam'
	      )
	      expect(user).to be_invalid
	    end

    it "should not save if email already exists" do
      user = User.create(
            first_name: 'Cam',
            last_name: 'Marshall',
            email: 'cam@cam.cam'
      )
      user2 = User.new(
            first_name: 'Cam',
            last_name: 'Marshall',
            email: 'cam@cam.cam'
      )
      expect(user2).to be_invalid
    end

    it "should not save if invalid email format" do
      user = User.new(
            first_name: 'Cam',
            last_name: 'Marshall',
            email: 'a@#$#&.c'
      )
      expect(user).to be_invalid
    end
  end
end