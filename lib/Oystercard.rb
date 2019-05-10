class Oystercard
  DEFAULT_VALUE = 0
  MAX_BALANCE = 90
  IN_JOURNEY = false
  MIN_BALANCE = 1
  MIN_FARE = 2
  attr_reader :balance, :entry_station, :exit_station
  # def balance
  #   @value
  # end
  attr_accessor :in_journey # ==>research what this does


  def initialize
    @balance = DEFAULT_VALUE
    @max_bal = MAX_BALANCE
    @in_journey = IN_JOURNEY
    @min_balance = MIN_BALANCE
    @min_fare = MIN_FARE
    @entry_station = nil
    @exit_station = nil
  end

  def top_up(amount)
    fail "Max balance £90" if @balance + amount > @max_bal
    @balance += amount
    return @balance
  end

  # def deduct(fare)
  #   fail "please top up, minimum balance reached" if @balance - fare <= DEFAULT_VALUE
  #   @balance -= fare
  #   return @balance
  # end

  def touch_in(station = '')
    fail "In journey, can't touch in again" if @in_journey == true
    fail "insufficient balance" if @min_balance > @balance

    @in_journey = true
    @entry_station = station
    # return @in_journey
  end

  def touch_out(exit_station = '')
    fail "Already touched out" if @in_journey == false

    deduct(@min_fare)
    @in_journey = false
    @exit_station = exit_station
    #return @in_journey
  end

  def in_journey?
    @entry_station != nil
    # !!entry_station #==> alternative to above line
  end

  # private

  def deduct(fare)
    # fail "please top up, minimum balance reached" if @balance - fare <= DEFAULT_VALUE
    @balance -= fare
    return @balance
  end
end
