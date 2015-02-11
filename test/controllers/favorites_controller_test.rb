require 'test_helper'

class FavoritesControllerTest < ActionController::TestCase
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
    @tattoo = tattoos(:tattoo1)
    @favorite = favorites(:favorite1)

    @params = {
        id: @favorite.id,
        user_id: @user.id,
        tattoo_id: @tattoo.id,
      }
  end

  teardown do
    @user = nil
    @tattoo = nil
    @favorite = nil
  end
  test "should get index" do
    get :index
    assert_response :success
  end

  test "should get show" do
    get :show, id: @favorite.id
    assert_response :success
  end

  test "should create favorite" do
    post :create, favorite: @params
    puts "create", @request.params, @response, @assigns
    assert_response :success
  end

  test "should delete favorite" do
    get :destroy, id: @favorite.id, user_id: @user.id
    assert_redirected_to user_tattoos_path(@user.id)
  end

end
