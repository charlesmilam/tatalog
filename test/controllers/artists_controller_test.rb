require 'test_helper'

class ArtistsControllerTest < ActionController::TestCase
   # *********** Stuff available after a valid request ************
  # puts "assigns", assigns
  # puts "cookies", cookies
  # puts "flash", flash
  # puts "session", session
  # puts "controller", @controller
  # puts "request", @request
  # puts "response", @response.@status

  setup do
    @artist = artists(:artist1)

    @params = {
      name: "Test Artist",
      nick: "Tester One",
      email: "test@test.example.com",
      shop_id: 2,
      url: "http://tester1.example.com"
    }
  end

  teardown do
    @artist = nil
  end

  test "should get index" do
    get :index
    assert_response :success
  end

  test "should get show" do
    get :show, id: @artist.id
    assert_response :success
  end

  test "should get new" do
    get :new

    artist = assigns(:artist)

    assert artist.new_record?
    assert_response :success
  end

  test "should create new artist" do
    post :create, artist: @params
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @artist.id
    assert_response :success
  end

  test "should update artist" do
    put :update, id: @artist.id, artist: {first_name: "New Cool Name"}
    assert_redirected_to artist_path(@artist.id)
  end

  test "should get destroy" do
    delete :destroy, id: @artist.id
    assert_redirected_to artists_path
  end

end
