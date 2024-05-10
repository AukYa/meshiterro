require "test_helper"

class PostimagesControllerTest < ActionDispatch::IntegrationTest
  test "should get index," do
    get postimages_index,_url
    assert_response :success
  end

  test "should get new," do
    get postimages_new,_url
    assert_response :success
  end

  test "should get show" do
    get postimages_show_url
    assert_response :success
  end
end
