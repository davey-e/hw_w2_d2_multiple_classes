require("minitest/autorun")
require("minitest/rg")
require_relative("../river")

class TestRiver < MiniTest::Test

  def setup()
    @river = River.new("Amazon", [])
  end

  def test_has_name
    expected = "Amazon"
    actual = @river.name
    assert_equal(expected, actual)
  end

end
