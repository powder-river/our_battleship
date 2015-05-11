
require './player.rb'
require './human_player.rb'
require './computer_player.rb'

class Ship
  attr_reader :length
  def initialize (length = 4)
    @length = length
  end
end
