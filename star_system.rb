class StarSystem
  attr_reader :name, :planets

  def initialize(name, planets)
    @name = name
    @planets = planets
  end


  def planet_names()
    return @planets.map { |planet| planet.name }
  end

  def get_planet_by_name(name)
    planet_name = @planets.find { |planet| planet.name == name }
    return planet_name
  end

def get_largest_planet()
 planet_sizes = @planets.map { |planet| planet.diameter }

 p planet_sizes.max
 return planet_sizes
end

def get_planets_with_no_moons()
  planet_name = @planets.find_all { |planet| planet.number_of_moons == 0 }
  return planet_name
end

def get_planets_with_more_moons(moons)
  planet_name = @planets.find_all { |planet| planet.number_of_moons > moons }
  return planet_name.map { |planet| planet.name }
end

end
