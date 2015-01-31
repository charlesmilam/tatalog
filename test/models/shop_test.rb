require 'test_helper'

class ShopTest < ActiveSupport::TestCase
  test "should not save with empty name" do
    shop = Shop.new
    assert_not shop.save, "Saved with empty/nil name"
  end
end
