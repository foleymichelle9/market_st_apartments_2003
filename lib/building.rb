class Building

  attr_reader :units, :renters

  def initialize
    @units = []
    @renters = []
  end

  def add_unit(unit)
    @units << unit
  end

  def add_renter(renter)
    @units << renter
  end

  def renters
   renter = @units.map do |unit|
     unit.renter
     #require "pry"; binding.pry
    end
    renter.map do |renter|
      renter.name
    end
  end

  def average_rent
    @units.inject(0) { |sum, unit| sum + unit.monthly_rent}.to_f / @units.count
  end

  def rented_units
    rented_units = []
    @units.reject{|unit| unit.renter == nil}
  end

  def renter_with_highest_rent
     rented_units.sort {|a, b| a.monthly_rent <=> b.monthly_rent}
  end

  def units_by_number_of_bedrooms
    bedrooms = {}
    @units.each do |unit|
      unit.bedrooms.each do |bedroom|


      
      end
    end
  end
end
