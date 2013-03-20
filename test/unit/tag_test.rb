require File.expand_path("../../test_helper", __FILE__)

class TagTest < ActiveSupport::TestCase
  					
  test "Tag cannot be blank" do 
  	test_tag = Tag.new		#blank tag
  	assert !test_tag.save, "Saved a blank tag"
  end

end