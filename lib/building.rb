class Building
  attr_reader :units
  def initialize
    @units = []
  end

  def add_unit(unit)
    @units << unit
  end

  def renters
    renter = @units.map do |unit|
      unit.renter
    end
    renter.map do |renter|
      renter.name
    end
  end

end
