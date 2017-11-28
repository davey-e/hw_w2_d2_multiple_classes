require("minitest/autorun")
require("minitest/rg")
require_relative("../bear")

class TestBear < MiniTest::Test

  def setup()
    @yogi = Bear.new("Yogi")
  end

  def test_has_name
    expected = "Yogi"
    actual = @yogi.name
    assert_equal(expected, actual)
  end

  def test_has_empty_stomach
    expected = []
    actual = @yogi.stomach
    assert_equal(expected, actual)
  end

end
