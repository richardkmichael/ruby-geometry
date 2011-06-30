require 'test/unit'
require 'geometry'
# require 'test/helper'

class VolumeTest < Test::Unit::TestCase
  include Geometry

  def test_non_negative_radius
    assert_raise RadiusMustBeNonNegative do
      Sphere.new(-1)
    end
  end

  def test_initialize_without_center_is_at_origin
    sphere = Sphere.new(1)

    assert_equal sphere.center.x, 0
    assert_equal sphere.center.y, 0
  end

  def test_initialize_with_center
    center = Point.new(1,1)
    sphere = Sphere.new(1, center)

    assert_equal center, sphere.center
  end
end
