require 'test_helper'

class DeletedsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @deleted = deleteds(:one)
  end

  test "should get index" do
    get deleteds_url
    assert_response :success
  end

  test "should get new" do
    get new_deleted_url
    assert_response :success
  end

  test "should create deleted" do
    assert_difference('Deleted.count') do
      post deleteds_url, params: { deleted: {  } }
    end

    assert_redirected_to deleted_url(Deleted.last)
  end

  test "should show deleted" do
    get deleted_url(@deleted)
    assert_response :success
  end

  test "should get edit" do
    get edit_deleted_url(@deleted)
    assert_response :success
  end

  test "should update deleted" do
    patch deleted_url(@deleted), params: { deleted: {  } }
    assert_redirected_to deleted_url(@deleted)
  end

  test "should destroy deleted" do
    assert_difference('Deleted.count', -1) do
      delete deleted_url(@deleted)
    end

    assert_redirected_to deleteds_url
  end
end
