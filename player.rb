require './grid.rb'



class Player
  attr_reader :grid, :name, :ships

 def initialize (name = "Dave")
   @name = name
   @grid = Grid.new
   @ships = []
 end

  def place_ships(lengths)
    #byebug
    lengths.each do |length|
      input = ""
      direction = ""
      puts @name+", where would you like to place a ship of length "+length.to_s+"?"
      input << get_user_input
      puts "Across or Down?"
      direction << get_user_input
      if direction == "Across"
        across = true
      else
        across = false
      end
      ship = Ship.new(length)
      @ships << ship
      @grid.place_ship(ship,@grid.x_of(input),@grid.y_of(input),across)
    end
  end



end
