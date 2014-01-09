require 'test_helper'

class TestItemsControllerTest < ActionController::TestCase
  setup do
    @test_item = test_items(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:test_items)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create test_item" do
    assert_difference('TestItem.count') do
      post :create, test_item: { actl_comp_time: @test_item.actl_comp_time, actl_start_time: @test_item.actl_start_time, bug_id: @test_item.bug_id, comment: @test_item.comment, description: @test_item.description, plan_comp_date: @test_item.plan_comp_date, priority: @test_item.priority, risk: @test_item.risk, specification: @test_item.specification, status: @test_item.status, test_type: @test_item.test_type, tester: @test_item.tester, track_id: @test_item.track_id }
    end

    assert_redirected_to test_item_path(assigns(:test_item))
  end

  test "should show test_item" do
    get :show, id: @test_item
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @test_item
    assert_response :success
  end

  test "should update test_item" do
    patch :update, id: @test_item, test_item: { actl_comp_time: @test_item.actl_comp_time, actl_start_time: @test_item.actl_start_time, bug_id: @test_item.bug_id, comment: @test_item.comment, description: @test_item.description, plan_comp_date: @test_item.plan_comp_date, priority: @test_item.priority, risk: @test_item.risk, specification: @test_item.specification, status: @test_item.status, test_type: @test_item.test_type, tester: @test_item.tester, track_id: @test_item.track_id }
    assert_redirected_to test_item_path(assigns(:test_item))
  end

  test "should destroy test_item" do
    assert_difference('TestItem.count', -1) do
      delete :destroy, id: @test_item
    end

    assert_redirected_to test_items_path
  end
end
