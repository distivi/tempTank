# File:  tc_simple_number.rb
 
require "./tank"
require "test/unit"
 
class TestTankMovement < Test::Unit::TestCase
 
  def test_create_tank
  	tank = Tank.new()
  	assert(tank,"Expected that tank created")
    # assert_equal(4, SimpleNumber.new(2).add(2) )
    # assert_equal(6, SimpleNumber.new(2).multiply(3) )
  end

  def test_create_tank_with_position
  	tank = Tank.new(Point.new(10,20))
  	assert(tank,"Expected that tank created")
  	assert_equal(10,tank.position.x,"Expected that tank's X position will be 10")
  	assert_equal(20,tank.position.y,"Expected that tank's Y position will be 10")
  end


 def test_create_tank_and_move_tham
  	tank = Tank.new(Point.new(10,10))
  	assert(tank,"Expected that tank created")
  	assert_equal(10,tank.position.x,"Expected that tank's X position will be 10")
  	assert_equal(10,tank.position.y,"Expected that tank's Y position will be 10")

  	tank.move_by(Point.new(10,0))
  	assert_equal(20,tank.position.x,"Expected that tank's X position will be 20")
  	assert_equal(10,tank.position.y,"Expected that tank's Y position will be 10")

  	tank.move_by(Point.new(0,-10))
  	assert_equal(20,tank.position.x,"Expected that tank's X position will be 20")
  	assert_equal(0,tank.position.y,"Expected that tank's Y position will be 0")

  	tank.move_to(Point.new(0,0))
  	assert_equal(0,tank.position.x,"Expected that tank's X position will be 0")
  	assert_equal(0,tank.position.y,"Expected that tank's Y position will be 0")
  end

   
 
end