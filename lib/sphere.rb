# http://blog.grayproductions.net/articles/all_about_struct

# Tests
# 1/ volume >= 0 (radius = 0, <0)
# 2/ if radius 1, then volume Math::PI

module Geometry
  class RadiusMustBeNonNegative < Exception; end

  class Sphere < Struct.new(:radius, :center) do
      def initialize(*args)
        super(*args)

        # Don't explicitly compare against nil, because nil will be passed to
        # the center object ==() method.  Instead allow Ruby to determine if
        # 'center' is falsy (nil).

        # This would require special handling of 'nil' in Point::==().
        # self.center = Point.new(0,0) if (center == nil)

        self.center = Point.new(0,0) unless center

        raise RadiusMustBeNonNegative if (radius < 0)
      end
    end

    def volume
      Rational(4 / 3) * Math::PI * (radius**3)
    end

    def area
      4 * Math::PI * (radius**2)
    end

  end
end
