require("minitest/autorun")
require("minitest/rg")
require_relative("../river")

class TestRiver < MiniTest::Test

  def setup()
    @amazon = River.new("Amazon", ["Salmon1", "Salmon2", "Trout1", "Trout2"])
  end

  def test_has_name
    expected = "Amazon"
    actual = @amazon.name
    assert_equal(expected, actual)
  end

  def test_has_fish
    expected = ["Salmon1", "Salmon2", "Trout1", "Trout2"]
    actual = @amazon.fish
    assert_equal(expected, actual)
  end

end
