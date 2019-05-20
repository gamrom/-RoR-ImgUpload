require 'test_helper'

class ImgpostsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @imgpost = imgposts(:one)
  end

  test "should get index" do
    get imgposts_url
    assert_response :success
  end

  test "should get new" do
    get new_imgpost_url
    assert_response :success
  end

  test "should create imgpost" do
    assert_difference('Imgpost.count') do
      post imgposts_url, params: { imgpost: { content: @imgpost.content, title: @imgpost.title } }
    end

    assert_redirected_to imgpost_url(Imgpost.last)
  end

  test "should show imgpost" do
    get imgpost_url(@imgpost)
    assert_response :success
  end

  test "should get edit" do
    get edit_imgpost_url(@imgpost)
    assert_response :success
  end

  test "should update imgpost" do
    patch imgpost_url(@imgpost), params: { imgpost: { content: @imgpost.content, title: @imgpost.title } }
    assert_redirected_to imgpost_url(@imgpost)
  end

  test "should destroy imgpost" do
    assert_difference('Imgpost.count', -1) do
      delete imgpost_url(@imgpost)
    end

    assert_redirected_to imgposts_url
  end
end
