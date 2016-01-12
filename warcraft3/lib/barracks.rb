class Barracks

  attr_reader :gold, :food

  def initialize(gold = 1000, food = 80)
    @gold = gold
    @food = food
  end

  def can_train_footman?
    (gold >= 135) && (food >= 2)
  end

  def train_footman
    if can_train_footman? == true
      @gold -= 135
      @food -= 2
      return footman = Footman.new
    else
      return nil
    end
  end

  def can_train_peasant?
    (gold >= 90) && (food >= 5)
  end

  def train_peasant
    if can_train_peasant? == true
      @gold -= 90
      @food -= 5
      return peasent = Peasant.new
    else
      return nil
    end
  end
end
