class Hole
  attr_reader :location, :hit
  def initialize (column, row)
    @location = [column,row]
    @hit = false
  end

end
