require 'test_helper'

class TopixesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @topix = topixes(:one)
  end

  test "should get index" do
    get topixes_url
    assert_response :success
  end

  test "should get new" do
    get new_topix_url
    assert_response :success
  end

  test "should create topix" do
    assert_difference('Topix.count') do
      post topixes_url, params: { topix: { contents: @topix.contents, picture: @topix.picture, title: @topix.title } }
    end

    assert_redirected_to topix_url(Topix.last)
  end

  test "should show topix" do
    get topix_url(@topix)
    assert_response :success
  end

  test "should get edit" do
    get edit_topix_url(@topix)
    assert_response :success
  end

  test "should update topix" do
    patch topix_url(@topix), params: { topix: { contents: @topix.contents, picture: @topix.picture, title: @topix.title } }
    assert_redirected_to topix_url(@topix)
  end

  test "should destroy topix" do
    assert_difference('Topix.count', -1) do
      delete topix_url(@topix)
    end

    assert_redirected_to topixes_url
  end
end
