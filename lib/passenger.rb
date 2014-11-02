class Passenger

  def initialize
    touch_out!
    get_funds
    out_station!
    out_train!
  end

  def touched_in?
    @touched_in
  end

  def in_train?
    @train
  end

  def in_station?
    @station
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

  def get_funds
    @funds = 1 + rand(10)
  end

  def remove_funds
    @funds = 0
  end

  def fixed_funds
    @funds = 2
  end

  def in_station!
    @station = true
  end

  def in_train!
    @train = true
  end

  def out_station!
    @station = false
  end

  def out_train!
    @train = false
  end


end 