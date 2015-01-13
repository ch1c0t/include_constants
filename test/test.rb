require 'include_constants'
require 'minitest'
require 'minitest-power_assert'

Minitest.autorun
Test = Minitest::Test

module M
  A = 0
  B = 1
  C = 2
end

class Acceptance < Test
  def setup
    @m = Module.new
  end

  def test_including_all_constants
    @m.include_constants from: M

    [:A,:B,:C].each do |c|
      assert { @m.constants.include? c }
    end
  end

  def test_including_some_constants
    @m.include_constants :A, :B, from: M

    assert { @m.constants.include? :A }
    assert { @m.constants.include? :B }
    assert { not @m.constants.include? :C }
  end

  def test_trying_to_include_nonexistent_constant
    assert_raises RuntimeError do
      @m.include_constants :A, :B, :D, from: M
    end
  end
end
