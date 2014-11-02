class Passenger

  def initialize
    touch_out!
    give_funds
  end

  def touched_in?
    @touched_in
  end

  def touch_in!
    raise "Passenger funds too low to touch in" if @funds <2
    @touched_in = true
  end

  def touch_out!
    @touched_in = false
  end

  def funds
    @funds
  end

  def give_funds
    @funds = 1 + rand(10)
  end

  def remove_funds
    @funds = 0
  end

  def fixed_funds
    @funds = 2
  end

end 