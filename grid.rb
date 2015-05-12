require 'byebug'
require './battleship.rb'

class Grid
  attr_reader :display
  def initialize
    @holes = []
  end

  def has_ship_on?(column,row)
    @holes.include? [column,row]
  end

  def display

puts %Q{    1   2   3   4   5   6   7   8   9   10
  -----------------------------------------
A |   |   |   |   |   |   |   |   |   |   |
B |   |   |   |   |   |   |   |   |   |   |
C |   |   |   |   |   |   |   |   |   |   |
D |   |   |   |   |   |   |   |   |   |   |
E |   |   |   |   |   |   |   |   |   |   |
F |   |   |   |   |   |   |   |   |   |   |
G |   |   |   |   |   |   |   |   |   |   |
H |   |   |   |   |   |   |   |   |   |   |
I |   |   |   |   |   |   |   |   |   |   |
J |   |   |   |   |   |   |   |   |   |   |
  -----------------------------------------
}



  end

  def place_ship(ship, column, row, across)
    ship.place(column,row, across)
      @holes.each do |hole|
      if ship.coverage.include?([hole[0], hole[1]])
        return false
      end
    end
      ship.coverage.each do |i|
        @holes << i
          #byebug
      end
  end
end
