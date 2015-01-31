require 'test_helper'

class TattooTest < ActiveSupport::TestCase
  setup do
    @user = users(:user1)
    @artist = artists(:artist1)
    @shop = shops(:shop1)
    @tattoo = tattoos(:tattoo1)
  end

  teardown do
    @user = nil
    @artist = nil
    @shop = nil
    @tattoo = nil
  end

  test "should not save tattoo without user_id" do
    assert_not @tattoo.save, "Saved the tattoo without user_id"
  end

  test "should not save tattoo without artist_id" do
    @tattoo.user_id = @user.id
    assert_not @tattoo.save, "Saved without an artist_id"
  end

  test "should not save tattoo without shop_id" do
    @tattoo.user_id = @user.id
    @tattoo.artist_id = @artist.id
    assert_not @tattoo.save, "Saved without a shop_id"
  end
end
