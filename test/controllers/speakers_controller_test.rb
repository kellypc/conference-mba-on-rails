require "test_helper"

class SpeakersControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get speakers_index_url
    assert_response :success
  end

  test "should get show" do
    get speakers_show_url
    assert_response :success
  end

  test "should get new" do
    get speakers_new_url
    assert_response :success
  end

  test "should get create" do
    get speakers_create_url
    assert_response :success
  end

  test "should get edit" do
    get speakers_edit_url
    assert_response :success
  end

  test "should get update" do
    get speakers_update_url
    assert_response :success
  end

  test "should get destroy" do
    get speakers_destroy_url
    assert_response :success
  end
end
