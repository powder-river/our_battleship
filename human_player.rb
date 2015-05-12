require "./player.rb"

def get_user_input
  gets.chomp
end

class HumanPlayer < Player

  attr_reader :grid, :name
  def initialize (name = "Dave")
    @name = name
    @grid = Grid.new
    @ships = []
  end



end
