
# require './player.rb'
# require './human_player.rb'
# require './computer_player.rb'
require './grid.rb'
#require './hole.rb'

class Ship
  attr_accessor :length, :coverage, :shots
  def initialize (length = 4)
    @length = length
    @placed = false
    @coverage = []
    @shots = []
  end


  def place (column , row , across)
    column > 0 && row > 0
    if @placed == true
      return false
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

    #@start_x = column
    # @start_y = row
    @placed = true
  end


  def covers? (column, row)
    @coverage.include? [column,row]
  end

  def overlaps_with?(other_ship)
    @coverage.any?{|s| other_ship.covers?(s[0], s[1])}
  end

  def fire_at(column, row)
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




#gameboard = ShipCoverage.new (game_hash)
