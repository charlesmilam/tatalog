require 'test_helper'

class TattooPicsControllerTest < ActionController::TestCase
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
    @pic = tattoo_pics(:pic1)
    @artist = artists(:artist1)
    @shop = shops(:shop1)

    @params = {
        id: @pic.id,
        tattoo_id: @tattoo.id,
        description: @pic.description,
        url: @pic.url,
      }
  end

  teardown do
    @user = nil
    @tattoo = nil
    @pick = nil
  end

  test "should get index" do
    get :index, tattoo_id: @tattoo.id
    assert_response :success
  end

  test "should get show" do
    get :show, tattoo_id: @tattoo.id, id: @pic.id
    assert_response :success
  end

  test "should get new" do
    get :new, tattoo_id: @tattoo.id
    assert_response :success
  end

  test "should create pic" do
    puts "pic params", @params
    post :create, tattoo_id: @tattoo.id, tattoo_pic: @params
    assert_redirected_to tattoo_tattoo_pics_path
  end

  test "should get edit" do
    get :edit, tattoo_id: @tattoo.id, id: @pic.id
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
