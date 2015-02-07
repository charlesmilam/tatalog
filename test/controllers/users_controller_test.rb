require 'test_helper'

class UsersControllerTest < ActionController::TestCase
  # *********** Stuff available after a valid request ************
  # puts "assigns", assigns
  # puts "cookies", cookies
  # puts "flash", flash
  # puts "session", session
  # puts "controller", @controller
  # puts "request", @request
  # puts "response", @response.@status

  setup do
    @user = users(:user1)

    @params = {
      user:{
        user_name: "tester1",
        email: "tester1@test.com",
        password: "abc123"
      }
    }
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
    get(:show, {id: @user.id}, nil)
    assert_response :success
    assert_not_nil assigns(:user), "@user is nil"
  end

  test "should get new" do
    get :new

    user = assigns(:user)

    assert user.new_record?
    assert_response :success
  end

  test "should get create" do
    get :create, user: @params
    puts "user get", @response
    assert_response :success
  end

  test "should create new user" do
    post :create, @params
    puts "create new user", @assigns
    assert_redirected_to user_url(@assigns["user"].id)
    assert_response :redirect
  end

  test "should get edit" do
    get(:edit, {id: @user.id}, nil)
    assert_response :success
    assert_not_nil assigns(:user), "@user is nil"
  end

  test "should update user" do
    put :update, id: @user.id, user: {email: "new.email@new.com"}
    assert_redirected_to user_url(@assigns["user"].id)
  end

  test "should get destroy" do
    get(:destroy, {id: @user.id}, nil)
    assert_redirected_to users_url
    assert_not_nil assigns(:user), "@user is nil"
  end
end
