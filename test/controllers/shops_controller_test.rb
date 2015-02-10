require 'test_helper'

class ShopsControllerTest < ActionController::TestCase
  # *********** Stuff available after a valid request ************
  # puts "assigns", assigns
  # puts "cookies", cookies
  # puts "flash", flash
  # puts "session", session
  # puts "controller", @controller
  # puts "request", @request
  # puts "response", @response.@status

  setup do
    @shop = shops(:shop1)

    @params = {
      name: "Tats-R-Us",
      address: "1313 Mockingbird Ln",
      city: "Hollyweird",
      state: "CA",
      zip: "90210",
      url: "http://tatsrus.example.com"
    }
  end

  teardown do
    @shop = nil
  end

  test "should get index" do
    get :index
    assert_response :success
  end

  test "should get show" do
    get :show, id: @shop.id
    assert_response :success
  end

  test "should get new" do
    get :new

    shop = assigns(:shop)

    assert shop.new_record?
    assert_response :success
  end

  test "should create new shop" do
    post :create, shop: @params
    assert_redirected_to shops_show_path
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
