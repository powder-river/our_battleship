
require './player.rb'
require './human_player.rb'
require './computer_player.rb'
require './ship_coverage'

class Ship
  attr_reader :length, :coverage
  def initialize (length = 4)
    @length = length
    @placed = false
  end

  def place (column , row , across)
    column > 0 && row > 0
    if @placed == true
      return false
    end
    @coverage = []


    @coverage.each do |point|
      if point[0] == column && point [1] == row
         return false


       end
      end


   if across == true
     @length.times do |num|
     @coverage << [column + num, row]
     end
   else
       @length.times do |num|
         @coverage << [column, row + num]
       end
     end

     @start_x = column
     @start_y = row
    @placed = true
  end


  def covers? (column, row)
    @coverage.include? [column,row]
  end

  def overlaps_with?(other_ship)
    other_ship.coverage.each do |point|

      if self.covers?(point[0],point[1])
        return true
      else
        return false
      end
    end
  end

  def fire_at (column, row)
    @coverage.include? [column,row]
  end

  def sunk? 
  end

end

#game_hash = { A: 1, B: 2, C: 3, D: 4, E: 5,
#F: 6, G: 7, H: 8, J: 9,}

#gameboard = ShipCoverage.new (game_hash)
