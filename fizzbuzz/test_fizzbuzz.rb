require './fizzbuzz'
require 'test/unit'

class TestHiker < Test::Unit::TestCase
  
  def test_fb_1
    assert_equal 1, fizzbuzz(1)
  end
  def test_fb_2
    assert_equal 2, fizzbuzz(2)
  end
  def test_fb_4
    assert_equal 4, fizzbuzz(4)
  end

  def test_fb_3
    assert_equal 'fizz', fizzbuzz(3)
  end
  def test_fb_6
    assert_equal 'fizz', fizzbuzz(6)
  end
  def test_fb_18
    assert_equal 'fizz', fizzbuzz(18)
  end

  def test_fb_5
    assert_equal 'buzz', fizzbuzz(5)
  end
  def test_fb_10
    assert_equal 'buzz', fizzbuzz(10)
  end
  def test_fb_20
    assert_equal 'buzz', fizzbuzz(20)
  end

  def test_fb_15
    assert_equal 'fizzbuzz', fizzbuzz(15)
  end
  def test_fb_30
    assert_equal 'fizzbuzz', fizzbuzz(30)
  end
  def test_fb_45
    assert_equal 'fizzbuzz', fizzbuzz(45)
  end

end

