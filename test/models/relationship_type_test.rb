require 'test_helper'

class RelationshipTypeTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
test 'name is required' do
    assert !RelationshipType.new.valid?
    assert RelationshipType.new(:name => 'parent').valid?
  end

end
