require 'test_helper'

class TattooPicTest < ActiveSupport::TestCase
  setup do
    @tattoo = tattoos(:tattoo1)
    @tatpic = tattoo_pics(:pic1)
  end

  teardown do
    @tattoo = nil
    @tatpic = nil
  end

  test "should not save tat pic without tat id" do
    assert_not @tatpic.save, "Saved witout a tattoo_id"
  end

  test "should not save tat pic without an url" do
    @tatpic.tattoo_id = @tattoo.id
    @tatpic.url = ""
    assert_not @tatpic.save, "Saved without an url"
  end
end
