require("minitest/autorun")
require("minitest/rg")
require_relative("../bear")
require_relative("../river")
require_relative("../fish")

class TestBear < MiniTest::Test

  def setup()
    @yogi = Bear.new("Yogi")
    @amazon = River.new("Amazon", ["Salmon1", "Salmon2", "Trout1", "Trout2"])
    @salmon1 = Fish.new("Salmon1")
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

  def test_can_roar
    expected = "Roar"
    actual = @yogi.roar()
    assert_equal(expected, actual)
  end

  def test_food_count
    expected = 0
    actual = @yogi.food_count()
    assert_equal(expected, actual)
  end



end
