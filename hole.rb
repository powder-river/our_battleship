class Hole
  attr_accessor :location, :hit
  def initialize (x,y)
    @location = [x,y]
    @hits = false
  end
end
