require './grid.rb'


class Player
  attr_reader :grid, :name
 def initialize (name = "Dave")

   @name = name
   @grid = Grid.new
 end




end
