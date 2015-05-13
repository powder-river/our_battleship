require "./player.rb"

def get_user_input
  gets.chomp
end

class HumanPlayer < Player

  attr_reader :grid, :name
  def initialize (name = "Dave")
    @name = name
<<<<<<< HEAD
    super()
=======
    @grid = Grid.new
    @ships = []

>>>>>>> fdcc5ddf40c2b6d8bdcff2f8513282b2a2ad45ee
  end



end
