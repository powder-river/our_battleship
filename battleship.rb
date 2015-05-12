
require './player.rb'
require './human_player.rb'
require './computer_player.rb'
require './ship_coverage'
require './grid.rb'
#require './hole.rb'

class Ship
  attr_reader :length, :coverage, :shots
  def initialize (length = 4)
    @length = length
    @placed = false
    @coverage = []
    @shots = []
  end
  #god_help_us = Hole.new(@coverage ,@shots)

  def place (column , row , across)
    column > 0 && row > 0
    if @placed == true
      return false
    end


    # @coverage.each do |point|
    #   if point[0] == column && point [1] == row
    #      return false
    #    end
    #   end


   if across == true
     @length.times do |num|
     @coverage << [column + num, row]
     end
   else
       @length.times do |num|
         @coverage << [column, row + num]
       end
     end

    #@start_x = column
    # @start_y = row
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
    if @coverage.include? [column,row]
      @shots << [column,row]
      return true
    else
      return false
    end

  end

  def sunk?
    if @coverage == @shots && @placed == true
      return true
    else
      return false
    end
  end




end


#game_hash = { A: 1, B: 2, C: 3, D: 4, E: 5,
#F: 6, G: 7, H: 8, J: 9,}

#gameboard = ShipCoverage.new (game_hash)
