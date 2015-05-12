require 'byebug'
require './battleship.rb'

class Grid

  attr_reader :display
  def initialize
    @holes = []
    @salvos = []
  end

  def has_ship_on?(column,row)
    @holes.include? [column,row]
  end

  def display

puts %Q{    1   2   3   4   5   6   7   8   9   10
  -----------------------------------------}


    10.times do |i|
      game_hash = { A: 1, B: 2, C: 3, D: 4, E: 5,
      F: 6, G: 7, H: 8, I: 9, J: 10}
      output = ""
      row = i + 1
      10.times do |j|
        column = j + 1
        fill = []
        @holes.each do |k|
          if k == [column,row]
            fill << "O"
          else
            fill << false
          end


        end
        @salvos.each do |l|
          if l == [column,row]
            fill << "X"
          else
            fill << false
          end
        end

        if fill.include?("X")
          output << "| X "
        elsif fill.include?("O")
          output << "| O "
        else
          output << "|   "
        end
      end
      puts game_hash.key(row).to_s + " " + output  + "|"
    end
    puts "  -----------------------------------------"




  end

  def place_ship(ship, column, row, across)
    ship.place(column,row, across)
      @holes.each do |hole|
      if ship.coverage.include?([hole[0], hole[1]])
        return false
      end
    end
      ship.coverage.each do |i|
        @holes << i
          #byebug
      end
  end

  def fire_at(column, row)
    if @holes.include?([column,row]) && !@salvos.include?([column, row])
      @salvos << [column,row]
      return true
    else
      return false
    end

  end

  def sunk?
    if @holes == @salvos && @holes != []
      return true
    else
      return false
    end
  end

end
