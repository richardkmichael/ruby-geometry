module Geometry
  class Point < Struct.new(:x, :y)
    def self.new_by_array(array)
      self.new(array[0], array[1])
    end

    def ==(another_point)
      puts "another_point: #{another_point}"
      puts "another_point.id: #{another_point.id}"
      puts "self: #{self}"
      puts "self.id: #{self.id}"
      # if another_point == nil
      #   return false
      # end
      # x == another_point.x && y == another_point.y
      ( ! another_point == nil ) && ( x == another_point.x && y == another_point.y )
      # true
    end
  end
end
