require 'train'

  describe Train do
    
   context 'A train should:' do 

    let(:train)                {Train.new}
    let(:station)              {Station.new}
    let(:passenger)            {Passenger.new}
    let(:active_passenger)     {double :passenger, touched_in?: true}

    #helper method to fill the train full of passengers
    def fill_train(train)
          120.times { train.board(active_passenger) }
    end

    
    it 'be empty on initialization' do 
      expect(train.head_count).to eq(0)
    end

    it 'should know if a passenger has touched in' do 
      expect{train.board(passenger)}.to raise_error(RuntimeError)
    end

    it 'allow touched in passengers to board' do 
      allow(active_passenger).to receive(:in_train!)
      allow(active_passenger).to receive(:out_station!)
      train.board(active_passenger)
      expect(train.head_count).to eq (1)
    end

    it 'allow touched in passengers to alight' do
      allow(active_passenger).to receive(:in_station!)
      allow(active_passenger).to receive(:out_station!)
      allow(active_passenger).to receive(:out_train!)
      allow(active_passenger).to receive(:in_train!)
      train.board(active_passenger)
      expect(train.head_count).to eq (1)
      train.alight(active_passenger)
      expect(train.head_count).to eq (0)
    end

    it 'must know how many coaches it has' do 
      expect(train.coach_count).to eq (3)
    end

    it 'must know its own capacity' do 
      expect(train.capacity).to eq (120)
    end 

    it 'must NOT allow passenegers to board if full' do
      allow(active_passenger).to receive(:out_station!)
      allow(active_passenger).to receive(:in_train!)
      fill_train(train)
      expect{train.board(active_passenger)}.to raise_error(RuntimeError)
    end

    it 'must NOT allow passengers to board from anywhere but a station' do
      expect{train.station_check(train)}.to raise_error(RuntimeError)
    end


   end
  end