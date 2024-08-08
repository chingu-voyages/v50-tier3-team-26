require "test_helper"

class TutorsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get tutors_new_url
    assert_response :success
  end

  test "should get create" do
    get tutors_create_url
    assert_response :success
  end

  test "should get edit" do
    get tutors_edit_url
    assert_response :success
  end

  test "should get update" do
    get tutors_update_url
    assert_response :success
  end

  test "should get show" do
    get tutors_show_url
    assert_response :success
  end
end
