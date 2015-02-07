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
    @tattoo = tattoos(:tattoo1)
    @artist = artists(:artist1)
    @shop = shops(:shop1)

    @params = {
        user_id: @user.id,
        artist_id: @artist.id,
        shop_id: @shop.id,
        name: @tattoo.name,
        when: @tattoo.when,
        why: @tattoo.why
      }
  end

  teardown do
    @user = nil
  end
  
  test "should get index" do
    get :index, user_id: @user.id
    
    assert_response :success
  end

  test "should get show" do
    get :show, user_id: @user.id, id: @tattoo.id
    #puts @response, @assigns
    assert_response :success
  end

  test "should get new" do
    get :new, user_id: @user.id
    assert_response :success
  end

  test "should get create" do
    post :create, user_id: @user.id, tattoo: @params #user_id: @user.id, id: @tattoo.id
    puts "responses", @response
    puts "assigns", @assigns["tattoo"][:id]
    #assert :success        
    assert_redirected_to user_tattoo_path(id: @assigns["tattoo"][:id])
  end

  test "should get edit" do
    get :edit, id: @tattoo.id
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
