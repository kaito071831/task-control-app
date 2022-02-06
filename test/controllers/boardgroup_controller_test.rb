require "test_helper"

class BoardgroupControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get boardgroup_index_url
    assert_response :success
  end

  test "should get new" do
    get boardgroup_new_url
    assert_response :success
  end

  test "should get edit" do
    get boardgroup_edit_url
    assert_response :success
  end
end
