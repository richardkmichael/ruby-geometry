module Geometry
  class Rectangle < Struct.new(:x, :y, :width, :height)
    
    def area
      (self.width - self.x).abs*(self.height - self.y).abs rescue 0
    end
    
    def empty?
      self.area == 0
    end
    
    def intersection_with(rect)
      return Rectangle.new if rect.empty? || self.empty?
      l1, r1= x, x
      l2, r2= rect.x, rect.x
      t1, b1= y, y
      t2, b2= rect.y, rect.y
      
      width < 0 ? l1+= width : r1+= width
      rect.width < 0 ? l2+= rect.width : r2+= rect.width
      return Rectangle.new if l2 == r2
      return Rectangle.new if (l1 >= r2 || l2 >= r1)
      height < 0 ? t1+= height : b1+= height
      return Rectangle.new if t1 == b1
      rect.height < 0 ? t2+= rect.height : b2+= rect.height
      return Rectangle.new if t2 == b2
      return Rectangle.new if (t1 >= b2 || t2 >= b1)

      intersection= Rectangle.new
      intersection.x= [l1, l2].max;
      intersection.y= [t1, t2].max;
      intersection.width= [r1, r2].min - intersection.x;
      intersection.height= [b1, b2].min - intersection.y;
      intersection
    end
    
    def intersect_with?(rect)
      !self.intersection_with(rect).empty?
    end
    
  end
end