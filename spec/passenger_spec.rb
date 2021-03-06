require 'passenger'

  describe Passenger do 

    context 'A passenger should:' do

      let (:passenger) {Passenger.new}

     it 'not be touched in on inception' do
     expect(passenger).not_to be_touched_in
     end

     it 'be able to touch in' do 
     passenger.fixed_funds
     passenger.touch_in!
     expect(passenger).to be_touched_in
     end

     it 'be able to touch out' do
     passenger.fixed_funds
     passenger.touch_in!
     passenger.touch_out!
     expect(passenger).not_to be_touched_in
     end

     it 'be assigned money on instantiation' do 
      expect(passenger.funds).to be >= 0
     end

     it 'not be able to touch in if funds are too low' do 
      passenger.remove_funds
      expect{passenger.touch_in!}.to raise_error(RuntimeError)
     end

     it 'not be in the station on initialization' do
      expect(passenger).not_to be_in_station
     end

     it 'not to be on a train on initialization' do 
      expect(passenger).not_to be_in_train
     end 
    
    end
  end 


