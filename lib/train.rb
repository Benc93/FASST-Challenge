class Train

  def initialize
    @passengers     = []
    @coaches        = 3
    @coach_capacity = 40
    # @train_capacity = @coaches * @coach_capacity
  end

  def head_count
    @passengers.count
  end

  def board(passenger)
    raise "Oi - no fare dodgers" unless passenger.touched_in?
    raise "Sorry, this train is full" if @passengers.count >= 120
    @passengers << passenger
  end

  def alight(passenger)
    @passengers.delete(passenger)
  end
  
  def coach_count
    @coaches
  end

  def capacity
    @coaches * 40
  end

end