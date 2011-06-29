require 'test/unit'
require 'geometry'
# require 'test/helper'

# Run only this with:
# rake test TEST=test/sphere/volume_test.rb


class VolumeTest < Test::Unit::TestCase
  include Geometry

  # def test_non_negative_radius
  #   assert_raise RadiusMustBeNonNegative do
  #     Sphere.new(-1)
  #   end
  # end

  # def test_initialize_without_center_is_at_origin
  #   sphere = Sphere.new(1)

  #   assert_equal sphere.center.x, 0
  #   assert_equal sphere.center.y, 0
  # end

  def test_initialize_with_center
    center = Point.new(1,1)

    # puts "center.class: #{center.class}"
    # puts "center.x: #{center.x}"
    # puts "center.y: #{center.y}"

    sphere = Sphere.new(1, center)

    # puts "sphere.center.x: #{sphere.center.x}"
    # puts "sphere.center.y: #{sphere.center.y}"

    # puts 'Running assert_equal'
    assert_equal sphere.center, center
    # true
  end
end
