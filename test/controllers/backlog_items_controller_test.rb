require 'test_helper'

class BacklogItemsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @backlog_item = backlog_items(:one)
  end

  test "should get index" do
    get backlog_items_url
    assert_response :success
  end

  test "should get new" do
    get new_backlog_item_url
    assert_response :success
  end

  test "should create backlog_item" do
    assert_difference('BacklogItem.count') do
      post backlog_items_url, params: { backlog_item: {  } }
    end

    assert_redirected_to backlog_item_url(BacklogItem.last)
  end

  test "should show backlog_item" do
    get backlog_item_url(@backlog_item)
    assert_response :success
  end

  test "should get edit" do
    get edit_backlog_item_url(@backlog_item)
    assert_response :success
  end

  test "should update backlog_item" do
    patch backlog_item_url(@backlog_item), params: { backlog_item: {  } }
    assert_redirected_to backlog_item_url(@backlog_item)
  end

  test "should destroy backlog_item" do
    assert_difference('BacklogItem.count', -1) do
      delete backlog_item_url(@backlog_item)
    end

    assert_redirected_to backlog_items_url
  end
end
