class Unit

attr_reader :health_points, :attack_power

  def initialize(health_points, attack_power)
    @health_points = health_points
    @attack_power = attack_power
  end

  def damage(dam)
    @health_points -= dam
  end  

  def attack!(unit)
    unit.damage(@attack_power)
  end


end