class Station

  def initialize
    @passengers        = []
    @trains            = []
  end

  def head_count
    @passengers.count
  end

  def receive(passenger)
    @passengers << passenger
  end

  def eject(passenger)
    @passengers.delete(passenger)
  end

  def train_count
    @trains.count
  end

  def arrive(train)
    @trains << train
  end

  def depart(train)
    @trains.delete(train)
  end

  def active_passengers
      @passengers.find {|passenger| passenger.touched_in? }
  end

  def active_passengers_count
      @passengers.count {|passenger| passenger.touched_in? }
  end
 
  def passive_passengers
      @passengers.reject {|passenger| passenger.touched_in? }
  end

  def swipe_in(passenger)
     passive_passengers.each {|passenger| passenger.touch_in! }
  end

end