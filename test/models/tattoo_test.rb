require 'test_helper'

class TattooTest < ActiveSupport::TestCase
  test "should not save tattoo without user_id" do
    tattoo = Tattoo.new
    assert_not tattoo.save, "Saved the tattoo without user_id"
  end
end
