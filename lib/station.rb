class Station

  attr_accessor :station_passengers

  def initialize
    @station_passengers   = []
    @trains               = []
  end

  def receive(passenger)
    passenger.in_station!
    @station_passengers << passenger
  end

  def eject(passenger)
    passenger.touch_out!
    passenger.out_station!
    @station_passengers.delete(passenger)
  end

  def head_count
    @station_passengers.count
  end

  def train_count
    @trains.count
  end

  def arrive(train)
    train.in_station!
    @trains << train
  end

  def depart(train)
    train.out_station!
    @trains.delete(train)
  end

  def active_passengers
      @station_passengers.find {|passenger| passenger.touched_in? }
  end

  def active_passengers_count
      @station_passengers.count {|passenger| passenger.touched_in? }
  end
 
  def passive_passengers
      @station_passengers.reject {|passenger| passenger.touched_in? }
  end

  def swipe_in
     passive_passengers.each {|passenger| passenger.touch_in! }
  end

  def swipe_out(passenger)
     active_passengers.each {|passenger| passenger.touch_out! }
  end

end