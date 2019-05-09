require 'Oystercard'
describe Oystercard do

 describe "balance" do
   it "Has a default balance of 0" do
     expect(subject.balance).to eq(0)
   end

   it "tops up the oystercard and returns new amount" do
     subject.top_up(5)
     expect(subject.balance).to eq(5)
   end

   it "Raises error is balance greater than £90" do
     subject.top_up(Oystercard::MAX_BALANCE)
     expect{ subject.top_up(1) }.to raise_error("Max balance £90")
   end

   it "deducts the balance and returns new balance" do
     subject.top_up(10)
     subject.deduct(5)
     expect(subject.balance).to eq(5)
   end

   # it "raise an error if balance is less than default balance" do
   #   expect { subject.deduct(5) }.to raise_error("please top up, minimum balance reached")
   # end

  describe "Oystercard functions" do
    it "Oystercard can touch in and be in journey" do
      subject.top_up(1)
      subject.touch_in
      expect(subject.in_journey?).to be true
    end

    it "Raises an error if already touched in" do
      subject.top_up(1)
      subject.touch_in
      subject.in_journey?
      expect{ subject.touch_in }.to raise_error("In journey, can't touch in again")
    end

    it " raises an error if minimum balance is less than £1" do
      subject.top_up(0.5)
      expect{ subject.touch_in }.to raise_error("insufficient balance")
    end

    it "charges minimum fare for each completed journey" do
      subject.top_up(10)
      subject.touch_in
      # expect(subject.touch_out).to respond_to(:deduct)
      expect{subject.touch_out}.to change{subject.balance}.by(-Oystercard::MIN_FARE)
    end

    it "Oystercard can touch out and not be in journey" do
      subject.top_up(1)
      subject.touch_in
      # subject.in_journey?
      subject.touch_out
      expect(subject.in_journey).to be false
    end

    it "Raises and error if already touched out" do
      subject.top_up(1)
      subject.touch_in
      # subject.in_journey?
      subject.touch_out
      expect{ subject.touch_out }.to raise_error("Already touched out")
    end

    it "Oystercard can be in_journey?" do
      expect(subject.in_journey?).to be false
    end


  end

 end

end
