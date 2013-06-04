
class Point
  attr_accessor :x, :y

  def initialize(x,y)
    @x = x
    @y = y   
  end

  def get_origin
    return @x, @y
  end
end


class Tank
  attr_accessor :position
  
  def initialize(position = Point.new(0,0))
    @position = position
    puts "created tank at position: #{@position.get_origin}"
  end

  def move_by(position)
    @position.x += position.x
    @position.y += position.y
    self.tank_moving()
  end

  def move_to(position)
    @position = position
    self.tank_moving()
  end

  def tank_moving
    puts "tank move to position #{@position.get_origin}"
  end
end

if __FILE__ == $0
    tank = Tank.new()
    tank.move_to(Point.new(10,10))
    tank.move_to(Point.new(0,10))
    tank.move_by(Point.new(0,-10))
end

