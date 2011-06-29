# http://blog.grayproductions.net/articles/all_about_struct

# Tests
# 1/ volume >= 0 (radius = 0, <0)
# 2/ if radius 1, then volume Math::PI

module Geometry
  class RadiusMustBeNonNegative < Exception; end

  class Sphere < Struct.new(:radius, :center) do
      def initialize(*args)
        puts "Args length: #{args.length}"
        # if args.length = 2
        #   my_center = args[1]
        #   puts "My center = #{my_center}."
        # end
        super(*args)
        self.center = Point.new(0,0) if (center == nil)
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
