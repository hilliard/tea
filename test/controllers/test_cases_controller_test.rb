require 'test_helper'

class TestCasesControllerTest < ActionController::TestCase
  setup do
    @test_case = test_cases(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:test_cases)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create test_case" do
    assert_difference('TestCase.count') do
      post :create, test_case: { comments: @test_case.comments, expected_results: @test_case.expected_results, postcondition: @test_case.postcondition, precondition: @test_case.precondition, step: @test_case.step, subsystem: @test_case.subsystem, testdata: @test_case.testdata, title: @test_case.title }
    end

    assert_redirected_to test_case_path(assigns(:test_case))
  end

  test "should show test_case" do
    get :show, id: @test_case
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @test_case
    assert_response :success
  end

  test "should update test_case" do
    patch :update, id: @test_case, test_case: { comments: @test_case.comments, expected_results: @test_case.expected_results, postcondition: @test_case.postcondition, precondition: @test_case.precondition, step: @test_case.step, subsystem: @test_case.subsystem, testdata: @test_case.testdata, title: @test_case.title }
    assert_redirected_to test_case_path(assigns(:test_case))
  end

  test "should destroy test_case" do
    assert_difference('TestCase.count', -1) do
      delete :destroy, id: @test_case
    end

    assert_redirected_to test_cases_path
  end
end
