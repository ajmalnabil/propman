require 'test_helper'

class PropertyTest < ActiveSupport::TestCase
  def setup
    @user = users(:damien)
    # This code is not idiomatically correct.
    # @property = Property.new(content: "Lorem ipsum", user_id: @user.id)
    @property = @user.properties.build(content: "Lorem ipsum")
  end

  test "should be valid" do
    assert @property.valid?
  end

  test "user id should be present" do
    @property.user_id = nil
    assert_not @property.valid?
  end

  test "content should be present" do
    @property.content = "   "
    assert_not @property.valid?
  end

  test "content should be at most 140 characters" do
    @property.content = "a" * 141
    assert_not @property.valid?
  end

  test "order should be most recent first" do
    assert_equal properties(:most_recent), Property.first
  end

end
