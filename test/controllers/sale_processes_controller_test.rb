require 'test_helper'

class SaleProcessesControllerTest < ActionController::TestCase
  setup do
    @sale_process = sale_processes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:sale_processes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create sale_process" do
    assert_difference('SaleProcess.count') do
      post :create, sale_process: { description: @sale_process.description, name: @sale_process.name }
    end

    assert_redirected_to sale_process_path(assigns(:sale_process))
  end

  test "should show sale_process" do
    get :show, id: @sale_process
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @sale_process
    assert_response :success
  end

  test "should update sale_process" do
    patch :update, id: @sale_process, sale_process: { description: @sale_process.description, name: @sale_process.name }
    assert_redirected_to sale_process_path(assigns(:sale_process))
  end

  test "should destroy sale_process" do
    assert_difference('SaleProcess.count', -1) do
      delete :destroy, id: @sale_process
    end

    assert_redirected_to sale_processes_path
  end
end
