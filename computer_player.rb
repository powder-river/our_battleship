require "./player.rb"
class ComputerPlayer < Player

  attr_reader :name
  def name
    @name = "HAL 9000"
  end
end
