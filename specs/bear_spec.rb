require("minitest/autorun")
require("minitest/rg")
require_relative("../bear")
require_relative("../river")
require_relative("../fish")

#If you need to create an instance of an object (e.g. in setup) then you need to require_relative

class TestBear < MiniTest::Test

  def setup()
    @yogi = Bear.new("Yogi")
    @salmon1 = Fish.new("Salmon1")
    @salmon2 = Fish.new("Salmon2")
    @trout1 = Fish.new("Trout2")
    @trout2 = Fish.new("Trout2")
    @amazon = River.new("Amazon", [@salmon1, @salmon2, @trout1, @trout2])
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
