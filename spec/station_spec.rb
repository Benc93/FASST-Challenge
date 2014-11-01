require 'station'

describe Station do
  context 'A station should' do 

    let(:train)                {double :train}
    let(:station)              {Station.new}
    let(:passenger)            {Passenger.new}
    let(:active_passenger)     {double :passenger, touched_in?: true}

    it 'not contain anything on instantiation' do
      expect(station.head_count).to eq(0)
      expect(station.train_count).to eq(0)
    end 

    it 'allow passengers to enter the station' do 
      expect(station.head_count).to eq(0)
      station.receive(passenger)
      expect(station.head_count).to eq(1)
    end

    it 'allow passengers to leave the station' do 
      station.receive(passenger)
      station.eject(passenger)
      expect(station.head_count).to eq (0)
    end

    it 'allow trains to arrive at the station' do 
      expect(station.train_count).to eq(0)
      station.arrive(train)
      expect(station.train_count).to eq(1)
    end

    it 'allow trains to depart the station' do 
      station.arrive(train)
      station.depart(train)
      expect(station.train_count).to eq(0)
    end

    it 'know if a passenger has touched in' do
      station.receive(passenger)
      station.receive(active_passenger)
      expect(station.head_count).to eq(2)   #because i've received 2 passengers
      expect(station.active_passengers).to eq(active_passenger) #because only 1 has touched in
    end

    it 'should let passengers touch in after they enter' do 
      station.receive(passenger)
      expect(station.active_passengers_count).to eq(0)
      station.swipe_in(passenger)
      expect(station.active_passengers_count).to eq(1)
    end

  end  
end 