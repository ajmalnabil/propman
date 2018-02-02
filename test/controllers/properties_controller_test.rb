require 'test_helper'

class PropertiesControllerTest < ActionDispatch::IntegrationTest
  def setup
    @property = properties(:orange)
  end

  test "should redirect create when not logged in" do
    assert_no_difference 'Property.count' do
      post properties_path, params: { property: { content: "Lorem ipsum" } }
    end
    assert_redirected_to login_url
  end

  test "should redirect destroy when not logged in" do
    assert_no_difference 'Property.count' do
      delete property_path(@property)
    end
    assert_redirected_to login_url
  end
end
