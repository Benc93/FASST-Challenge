
class Train

  attr_accessor :train_passengers

  def initialize
    @train_passengers     = []
    @coaches              = 3
    @coach_capacity       = 40
  end

  def head_count
    @train_passengers.count
  end

  def board(passenger, station)

    raise "Oi - no fare dodgers" unless passenger.touched_in?
    raise "Sorry, this train is full" if train_full?
    passenger.in_train!
    passenger.out_station!
    @train_passengers << passenger 
    station.station_passengers.delete(passenger)
  end

  def station_check(train)
    raise "Train is not in a station" unless train.in_station?
  end

  def begin_board(train)
    train.station_check
    # train.board(station.active_passengers)
  end

  def alight(passenger, station)
    passenger.out_train!
    passenger.in_station!
    station.station_passengers << passenger
    @train_passengers.delete(passenger)
  end
  
  def coach_count
    @coaches
  end

  def capacity
    @coaches * 40
  end

  def in_station!
    @station = true
  end

  def out_station!
    @station = false
  end

  def in_station?
    @station
  end

  # def take_passengers(station)
  #     @train_passengers.push(station.active_passengers)
  # end

  def train_full? 
    @train_passengers.count >= 120
  end

end




    # def accept_passengers(train)
    # unless container.full?
    #   broken_bikes.each { |bike| container.dock(bike); self.release(bike) }
    # end