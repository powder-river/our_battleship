
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

  end


  def covers? (column, row)


  end

end

#game_hash = { A: 1, B: 2, C: 3, D: 4, E: 5,
#F: 6, G: 7, H: 8, J: 9,}

#gameboard = ShipCoverage.new (game_hash)
