require 'test_helper'

class TattoosControllerTest < ActionController::TestCase
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
      tattoo: {
        user_id: @user.id
      }
    }
  end

  teardown do
    @user = nil
  end
  
  test "should get index" do
    get :index, user_id: @user.id
    puts @response, @assigns
    assert_response :success
  end

  test "should get show" do
    get :show, user_id: @user.id
    assert_response :success
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
    get :edit
    assert_response :success
  end

  test "should get update" do
    get :update
    assert_response :success
  end

  test "should get destroy" do
    get :destroy
    assert_response :success
  end

end
