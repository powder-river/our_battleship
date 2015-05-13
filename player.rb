require './grid.rb'



class Player
  attr_reader :grid, :name, :ships

 def initialize (name = "Dave")
   @name = name
   @grid = Grid.new
   @ships = []
 end

  def place_ships(lengths)
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
      x = @grid.x_of(input)
      y = @grid.y_of(input)
      ship.place(x,y, across)
      if @ships.any? {|s| s.overlaps_with?(ship)}
        puts "Unfortunately, that ship overlaps with one of your other ships.  Please try again."
        self.place_ships([length])
      else
        @ships << ship
        @grid.place_ship(ship,x ,y ,across)
      end
    end
  end



end
