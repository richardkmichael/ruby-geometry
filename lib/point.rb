module Geometry
  class Point < Struct.new(:x, :y)
    def self.new_by_array(array)
      self.new(array[0], array[1])
    end

    def ==(another_point)
      puts "another_point: #{another_point}"
      puts "another_point.object_id: #{another_point.object_id}" unless another_point == nil
      puts "self: #{self}"
      puts "self.object_id: #{self.object_id}"
      # if another_point == nil
      #   return false
      # end
      # x == another_point.x && y == another_point.y
      puts "x: #{x}"
      puts "y: #{y}"
      puts "another_point.x: #{another_point.x}" unless another_point == nil
      puts "another_point.y: #{another_point.y}" unless another_point == nil
      ( ! another_point == nil ) && ( x == another_point.x && y == another_point.y )
      # true
    end
  end
end
