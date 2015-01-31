require 'test_helper'

class ArtistTest < ActiveSupport::TestCase
  test "should not save new artist without first name" do
    artist = Artist.new
    assert_not artist.save, "Saved with no first name"
  end
end
