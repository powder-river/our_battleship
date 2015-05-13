require "./player.rb"
class ComputerPlayer < Player

  attr_reader :grid, :name
  def initialize

   @name = "HAL 9000"
   super
 end
end
