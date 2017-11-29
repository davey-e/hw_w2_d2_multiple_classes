require("minitest/autorun")
require("minitest/rg")
require_relative("../river")
require_relative("../fish")

#If you need to create an instance of an object (e.g. in setup) then you need to require_relative


class TestRiver < MiniTest::Test

  def setup()
    @salmon1 = Fish.new("Salmon1")
    @salmon2 = Fish.new("Salmon2")
    @salmon3 = Fish.new("Salmon3")
    @salmon4 = Fish.new("Salmon4")
    @trout1 = Fish.new("Trout1")
    @trout2 = Fish.new("Trout2")
    @trout3 = Fish.new("Trout3")
    @trout4 = Fish.new("Trout4")
    @fish_array = [@salmon1, @salmon2, @trout1, @trout2]
    @amazon = River.new("Amazon", @fish_array)
    #@amazon = River.new("Amazon", ["Salmon1", "Salmon2", "Trout1", "Trout2"])
  end

  def test_has_name
    expected = "Amazon"
    actual = @amazon.name
    assert_equal(expected, actual)
  end

  def test_has_fish
    expected = [@salmon1, @salmon2, @trout1, @trout2]
    #expected = ["Salmon1", "Salmon2", "Trout1", "Trout2"]
    actual = @amazon.fish
    assert_equal(expected, actual)
  end

  def test_fish_count
    expected = 4
    actual = @amazon.fish_count()
    assert_equal(expected, actual)
  end

  def test_add_fish
    @amazon.add_fish(@salmon3)
    @amazon.add_fish(@salmon4)
    expected = 6
    actual = @amazon.fish_count()
    assert_equal(expected, actual)
  end

end
