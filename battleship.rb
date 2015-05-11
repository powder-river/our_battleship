
require './player.rb'
require './human_player.rb'
require './computer_player.rb'
require './ship_coverage'

class Ship
  attr_reader :length
  def initialize (length = 4)
    @length = length
  end

  def place (column , row , across)
     column > 0 && row > 0
     @coverage = []
     
     @start_x = column
     @start_y = row

  end


  def covers? (column, row)
    column >= @start_x && column <= @start_x + @length -1 && row == @start_y
  end






end
