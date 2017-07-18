require 'test_helper'

class ChatGroupsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get chat_groups_index_url
    assert_response :success
  end

  test "should get create" do
    get chat_groups_create_url
    assert_response :success
  end

end
