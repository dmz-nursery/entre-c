require File.expand_path("../../test_helper", __FILE__)

class UserTest < ActiveSupport::TestCase
   
   	test "every user must have a name" do
   		test_user = User.new 	#No name assigned
     	assert !test_user.save, "Saved a user without a name"
  	end  

	test "every user must have a valid email" do
   		test_user = User.new( :name => "Joe", :email => "some_email_addressgmail.com") #email invalid - @ missing
   		assert !test_user.save, "Saved a user with an invalid email"
   	end	

   	test "verify status count" do
   	#	test_user = User.new(:name => "Joe", :email => "some_email_addressg@gmail.com")
   	#	test_status = Status.new(:status => "Just teting status sount here y'all")

   	#	assert test_user.count_statuses == nil, "Nope, not working"
   	end	
end