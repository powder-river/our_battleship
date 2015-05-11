class ShipCoverage
  attr_reader :start_x, :start_y, :direction, :length, :coverage_zone
  def initialize (start_x, start_y, direction, length)
    @start_x = start_x
    @start_y = start_y
    @direction = direction
    @length = length
    @coverage_zone=[]
  end

  def cover
    if direction == true
      length.times do |a|
        @coverage_zone << [start_x + a - 1, start_y]
          end
    end
  end

end
