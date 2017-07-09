require 'test_helper'

class MemersControllerTest < ActionController::TestCase
  setup do
    @memer = memers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:memers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create memer" do
    assert_difference('Memer.count') do
      post :create, memer: { gender: @memer.gender, memeCount: @memer.memeCount, name: @memer.name }
    end

    assert_redirected_to memer_path(assigns(:memer))
  end

  test "should show memer" do
    get :show, id: @memer
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @memer
    assert_response :success
  end

  test "should update memer" do
    patch :update, id: @memer, memer: { gender: @memer.gender, memeCount: @memer.memeCount, name: @memer.name }
    assert_redirected_to memer_path(assigns(:memer))
  end

  test "should destroy memer" do
    assert_difference('Memer.count', -1) do
      delete :destroy, id: @memer
    end

    assert_redirected_to memers_path
  end
end
