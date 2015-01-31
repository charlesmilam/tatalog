require 'test_helper'

class FavoriteTest < ActiveSupport::TestCase
  test "shoud not save without user and tatoo ids" do
    fave = Favorite.new
    assert_not fave.save, "Saved without user and tattoo ids"
  end
end
