require File.expand_path("../../test_helper", __FILE__)

class StatusTest < ActiveSupport::TestCase

	test "status cannot be blank" do 
		test_status = Status.new 	#status is blank
		assert !test_status.save, "Saved a blank status"
	end

	test "image_url must be valid" do
		test_status = Status.new( :status => "Testing a link here, y'all!", 
			                      :image_url => "http//www.somewebsite.com") #invalid url - colon missing 
		assert !test_status.save, "Saved a status with invalid url"
	end
end