require 'test_helper'

class UsersControllerTest < ActionController::TestCase
  setup do
    @user = users(:user1)
    @user.save
  end

  teardown do
    @user = nil
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:users), "@users is nil"
  end

  test "should get show" do
    get(:show, {"id" => @user.id}, nil)
    assert_response :success
    assert_not_nil assigns(:user), "@user is nil"
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should get create" do
    get :create
    assert_response :success
  end

  test "should get edit" do
    get(:edit, {"id" => @user.id}, nil)
    assert_response :success
    assert_not_nil assigns(:user), "@user is nil"
  end

  test "should get update" do
    get(:update, {"id" => @user.id}, nil)
    assert_response :success
    assert_not_nil assigns(:user), "@user is nil"
  end

  test "should get destroy" do
    get(:destroy, {"id" => @user.id}, nil)
    assert_response :success
    assert_not_nil assigns(:user), "@user is nil"
  end

end
