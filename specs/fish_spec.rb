require("minitest/autorun")
require("minitest/rg")
require_relative("../fish")

class TestFish < MiniTest::Test

  def setup()
    @salmon1 = Fish.new("Salmon1")
  end

  def test_has_name
    expected = "Salmon1"
    actual = @salmon1.name
    assert_equal(expected, actual)
  end

end
