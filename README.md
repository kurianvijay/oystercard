1 - In order to use public transport
As a customer
I want money on my card

Object | Message
card   | Balance - default value = 0
                                    Feature Test:

RED -
Vijays-MacBook-Pro:OysterCard_Lucy vijaykurian$ irb
2.6.0 :001 > exit
Vijays-MacBook-Pro:OysterCard_Lucy vijaykurian$ irb
2.6.0 :001 > require './lib/Oystercard'
 => true
2.6.0 :002 > oyster = Oystercard.new
Traceback (most recent call last):
        4: from /Users/vijaykurian/.rvm/rubies/ruby-2.6.0/bin/irb:23:in `<main>'
        3: from /Users/vijaykurian/.rvm/rubies/ruby-2.6.0/bin/irb:23:in `load'
        2: from /Users/vijaykurian/.rvm/rubies/ruby-2.6.0/lib/ruby/gems/2.6.0/gems/irb-1.0.0/exe/irb:11:in `<top (required)>'
        1: from (irb):2
NameError (uninitialized constant Oystercard)
2.6.0 :003 > exit


2 - In order to keep using public transport
As a customer
I want to add money to my card

Object | Message
card   | top_up --> balance

                                    Feature Test:
RED -
Vijays-MacBook-Pro:OysterCard_Lucy vijaykurian$ irb
2.6.0 :001 > require './lib/Oystercard'
 => true
2.6.0 :002 > oyster = Oystercard.new
 => #<Oystercard:0x00007f9d1796b728>
2.6.0 :003 > oyster.balance
Traceback (most recent call last):
        4: from /Users/vijaykurian/.rvm/rubies/ruby-2.6.0/bin/irb:23:in `<main>'
        3: from /Users/vijaykurian/.rvm/rubies/ruby-2.6.0/bin/irb:23:in `load'
        2: from /Users/vijaykurian/.rvm/rubies/ruby-2.6.0/lib/ruby/gems/2.6.0/gems/irb-1.0.0/exe/irb:11:in `<top (required)>'
        1: from (irb):3
NoMethodError (undefined method `balance' for #<Oystercard:0x00007f9d1796b728>)
2.6.0 :004 > exit

GREEN -
Vijays-MacBook-Pro:OysterCard_Lucy vijaykurian$ irb
2.6.0 :001 > require './lib/Oystercard'
 => true
2.6.0 :002 > oyster = Oystercard.new
 => #<Oystercard:0x00007feb698bb350 @value=0>
2.6.0 :003 > oyster.balance
 => 0
2.6.0 :004 > exit
Vijays-MacBook-Pro:OysterCard_Lucy vijaykurian$ rspec
Finished in 0.00884 seconds (files took 0.08904 seconds to load)
1 example, 0 failures

3 - In order to protect my money from theft or loss
As a customer
I want a maximum limit (of £90) on my card

Object | Message
card   | modify top_up --> MAX_LIMIT = 90 --> balance
                                Feature Test:

RED -
Vijays-MacBook-Pro:OysterCard_Lucy vijaykurian$ irb
2.6.0 :001 > require './lib/Oystercard'
 => true
2.6.0 :002 > oyster = Oystercard.new
 => #<Oystercard:0x00007fe3f5197338 @balance=0>
2.6.0 :003 > oyster.top_up
Traceback (most recent call last):
        4: from /Users/vijaykurian/.rvm/rubies/ruby-2.6.0/bin/irb:23:in `<main>'
        3: from /Users/vijaykurian/.rvm/rubies/ruby-2.6.0/bin/irb:23:in `load'
        2: from /Users/vijaykurian/.rvm/rubies/ruby-2.6.0/lib/ruby/gems/2.6.0/gems/irb-1.0.0/exe/irb:11:in `<top (required)>'
        1: from (irb):3
NoMethodError (undefined method `top_up' for #<Oystercard:0x00007fe3f5197338 @balance=0>)
2.6.0 :004 > exit

GREEN -
Vijays-MacBook-Pro:OysterCard_Lucy vijaykurian$ irb
2.6.0 :001 > require './lib/Oystercard'
 => true
2.6.0 :002 > oyster = Oystercard.new
 => #<Oystercard:0x00007f8eb69c69d0 @balance=0>
2.6.0 :003 > oyster.top_up(5)
 => 5
2.6.0 :004 > oyster.top_up(5)
 => 10
2.6.0 :005 > exit

4 - In order to pay for my journey
As a customer
I need my fare deducted from my card

Object | Message
card   | deduct --> balance
                                Feature Test:
RED -
Vijays-MacBook-Pro:OysterCard_Lucy vijaykurian$ irb
2.6.0 :001 > require './lib/Oystercard'
 => true
2.6.0 :002 > oyster = Oysercard.new
Traceback (most recent call last):
        4: from /Users/vijaykurian/.rvm/rubies/ruby-2.6.0/bin/irb:23:in `<main>'
        3: from /Users/vijaykurian/.rvm/rubies/ruby-2.6.0/bin/irb:23:in `load'
        2: from /Users/vijaykurian/.rvm/rubies/ruby-2.6.0/lib/ruby/gems/2.6.0/gems/irb-1.0.0/exe/irb:11:in `<top (required)>'
        1: from (irb):2
NameError (uninitialized constant Oysercard)
Did you mean?  Oystercard
2.6.0 :003 > oyster = Oystercard.new
 => #<Oystercard:0x00007f9ed9109558 @balance=0, @max_bal=90>
2.6.0 :004 > oyster.deduct(amount)
Traceback (most recent call last):
        4: from /Users/vijaykurian/.rvm/rubies/ruby-2.6.0/bin/irb:23:in `<main>'
        3: from /Users/vijaykurian/.rvm/rubies/ruby-2.6.0/bin/irb:23:in `load'
        2: from /Users/vijaykurian/.rvm/rubies/ruby-2.6.0/lib/ruby/gems/2.6.0/gems/irb-1.0.0/exe/irb:11:in `<top (required)>'
        1: from (irb):4
NameError (undefined local variable or method `amount' for main:Object)
2.6.0 :005 > oyster.deduct
Traceback (most recent call last):
        5: from /Users/vijaykurian/.rvm/rubies/ruby-2.6.0/bin/irb:23:in `<main>'
        4: from /Users/vijaykurian/.rvm/rubies/ruby-2.6.0/bin/irb:23:in `load'
        3: from /Users/vijaykurian/.rvm/rubies/ruby-2.6.0/lib/ruby/gems/2.6.0/gems/irb-1.0.0/exe/irb:11:in `<top (required)>'
        2: from (irb):5
        1: from (irb):5:in `rescue in irb_binding'
NoMethodError (undefined method `deduct' for #<Oystercard:0x00007f9ed9109558 @balance=0, @max_bal=90>)
2.6.0 :006 > quit

GREEN -
Vijays-MacBook-Pro:OysterCard_Lucy vijaykurian$ irb
2.6.0 :001 > require './lib/Oystercard'
 => true
2.6.0 :002 > oyster = Oystercard.new
 => #<Oystercard:0x00007fd5c79824f8 @balance=0, @max_bal=90>
2.6.0 :003 > oyster.balance
 => 0
2.6.0 :004 > oyster.deduct
Traceback (most recent call last):
        5: from /Users/vijaykurian/.rvm/rubies/ruby-2.6.0/bin/irb:23:in `<main>'
        4: from /Users/vijaykurian/.rvm/rubies/ruby-2.6.0/bin/irb:23:in `load'
        3: from /Users/vijaykurian/.rvm/rubies/ruby-2.6.0/lib/ruby/gems/2.6.0/gems/irb-1.0.0/exe/irb:11:in `<top (required)>'
        2: from (irb):4
        1: from /Users/vijaykurian/Projects/OysterCard_Lucy/lib/Oystercard.rb:21:in `deduct'
ArgumentError (wrong number of arguments (given 0, expected 1))
2.6.0 :005 > oyster.deduct(1)
 => -1
2.6.0 :006 > oyster.top_up(5)
 => 4
2.6.0 :007 > oyster.deduct(2)
 => 2
2.6.0 :008 > quit

GREEN - Error message method
Vijays-MacBook-Pro:OysterCard_Lucy vijaykurian$ irb
2.6.0 :001 > require './lib/Oystercard'
 => true
2.6.0 :002 > oyster = Oystercard.new
 => #<Oystercard:0x00007f82da9a6c30 @balance=0, @max_bal=90>
2.6.0 :003 > oyster.deduct(5)
Traceback (most recent call last):
        5: from /Users/vijaykurian/.rvm/rubies/ruby-2.6.0/bin/irb:23:in `<main>'
        4: from /Users/vijaykurian/.rvm/rubies/ruby-2.6.0/bin/irb:23:in `load'
        3: from /Users/vijaykurian/.rvm/rubies/ruby-2.6.0/lib/ruby/gems/2.6.0/gems/irb-1.0.0/exe/irb:11:in `<top (required)>'
        2: from (irb):3
        1: from /Users/vijaykurian/Projects/OysterCard_Lucy/lib/Oystercard.rb:22:in `deduct'
RuntimeError (please top up, minimum balance reached)
2.6.0 :004 > quit
Vijays-MacBook-Pro:OysterCard_Lucy vijaykurian$

5 -
In order to get through the barriers.
As a customer
I need to touch in and out.

Object | Message
Card   | touch_in
Card   | touch_out
Card   | in_journey?
                              Feature Test:
RED -
                              TOUCH_IN -
Vijays-MacBook-Pro:OysterCard_Lucy vijaykurian$ irb
2.6.0 :001 > require './lib/Oystercard'
 => true
2.6.0 :002 > require './lib/station'
 => true
2.6.0 :003 > station = Station.new
 => #<Station:0x00007fc8ad17d928>
2.6.0 :004 > oyster = Oystercard.new
 => #<Oystercard:0x00007fc8ad08ea30 @balance=0, @max_bal=90>
2.6.0 :005 > oyster.touch_in
Traceback (most recent call last):
        4: from /Users/vijaykurian/.rvm/rubies/ruby-2.6.0/bin/irb:23:in `<main>'
        3: from /Users/vijaykurian/.rvm/rubies/ruby-2.6.0/bin/irb:23:in `load'
        2: from /Users/vijaykurian/.rvm/rubies/ruby-2.6.0/lib/ruby/gems/2.6.0/gems/irb-1.0.0/exe/irb:11:in `<top (required)>'
        1: from (irb):5
NoMethodError (undefined method `touch_in' for #<Oystercard:0x00007fc8ad08ea30 @balance=0, @max_bal=90>)
2.6.0 :006 > quit

                              TOUCH_OUT
Vijays-MacBook-Pro:OysterCard_Lucy vijaykurian$ irb
2.6.0 :001 > require './lib/Oystercard'
 => true
2.6.0 :002 > oyster = Oystercard.new
 => #<Oystercard:0x00007ff8f29724d8 @balance=0, @max_bal=90>
2.6.0 :003 > oyster.touch_in
 => true
2.6.0 :004 > quit
Vijays-MacBook-Pro:OysterCard_Lucy vijaykurian$ irb
2.6.0 :001 > require './lib/Oystercard'
 => true
2.6.0 :002 > oyster = Oystercard.new
 => #<Oystercard:0x00007f90c603e6d0 @balance=0, @max_bal=90>
2.6.0 :003 > oyster.touch_out
Traceback (most recent call last):
        4: from /Users/vijaykurian/.rvm/rubies/ruby-2.6.0/bin/irb:23:in `<main>'
        3: from /Users/vijaykurian/.rvm/rubies/ruby-2.6.0/bin/irb:23:in `load'
        2: from /Users/vijaykurian/.rvm/rubies/ruby-2.6.0/lib/ruby/gems/2.6.0/gems/irb-1.0.0/exe/irb:11:in `<top (required)>'
        1: from (irb):3
NoMethodError (undefined method `touch_out' for #<Oystercard:0x00007f90c603e6d0 @balance=0, @max_bal=90>)
Did you mean?  touch_in
2.6.0 :004 > quit

                              IN_JOURNEY?
Vijays-MacBook-Pro:OysterCard_Lucy vijaykurian$ irb
2.6.0 :001 > require './lib/Oystercard'
 => true
2.6.0 :002 > oyster = Oystercard.new
 => #<Oystercard:0x00007fc47e1e5fb0 @balance=0, @max_bal=90>
2.6.0 :003 > oyster.touch_out
 => true
2.6.0 :004 > quit
Vijays-MacBook-Pro:OysterCard_Lucy vijaykurian$ irb
2.6.0 :001 > require './lib/Oystercard'
 => true
2.6.0 :002 > oyster = Oystercard.new
 => #<Oystercard:0x00007fae2502a758 @balance=0, @max_bal=90>
2.6.0 :003 > oyster.in_journey?
Traceback (most recent call last):
        4: from /Users/vijaykurian/.rvm/rubies/ruby-2.6.0/bin/irb:23:in `<main>'
        3: from /Users/vijaykurian/.rvm/rubies/ruby-2.6.0/bin/irb:23:in `load'
        2: from /Users/vijaykurian/.rvm/rubies/ruby-2.6.0/lib/ruby/gems/2.6.0/gems/irb-1.0.0/exe/irb:11:in `<top (required)>'
        1: from (irb):3
NoMethodError (undefined method `in_journey?' for #<Oystercard:0x00007fae2502a758 @balance=0, @max_bal=90>)
2.6.0 :004 > quit

GREEN -
Vijays-MacBook-Pro:OysterCard_Lucy vijaykurian$ irb
2.6.0 :001 > require './lib/Oystercard'
 => true
2.6.0 :002 > oyster = Oystercard.new
 => #<Oystercard:0x00007fee3c13a538 @balance=0, @max_bal=90, @in_journey=false>
2.6.0 :003 > oyster.touch_in
 => true
2.6.0 :004 > oyster.touch_in
 => true
2.6.0 :005 > oyster.in_journey?
 => false
2.6.0 :006 > quit

GREEN -                     NO DOUBLE TOUCH IN OR TOUCH OUT
Vijays-MacBook-Pro:OysterCard_Lucy vijaykurian$ irb
2.6.0 :001 > require './lib/Oystercard'
 => true
2.6.0 :002 > oyster = Oystercard.new
 => #<Oystercard:0x00007fe5088fe1d0 @balance=0, @max_bal=90, @in_journey=false>
2.6.0 :003 > oyster.touch_in
 => true
2.6.0 :004 > oyster.in_journey?
 => true
2.6.0 :005 > oyster.touch_in
Traceback (most recent call last):
        5: from /Users/vijaykurian/.rvm/rubies/ruby-2.6.0/bin/irb:23:in `<main>'
        4: from /Users/vijaykurian/.rvm/rubies/ruby-2.6.0/bin/irb:23:in `load'
        3: from /Users/vijaykurian/.rvm/rubies/ruby-2.6.0/lib/ruby/gems/2.6.0/gems/irb-1.0.0/exe/irb:11:in `<top (required)>'
        2: from (irb):5
        1: from /Users/vijaykurian/Projects/OysterCard_Lucy/lib/Oystercard.rb:31:in `touch_in'
RuntimeError (In journey, can't touch in again)
2.6.0 :006 > oyster.touch_out
 => true
2.6.0 :007 > oyster.in_journey?
 => true
2.6.0 :008 > quit



6 -
In order to pay for my journey
As a customer
I need to have the minimum amount (£1) for a single journey.

Object | Message
card   | Minimum Balance --> £1 ==> modify touch_in to raise error

                              Feature Test:
RED -
???????????

GREEN -

Vijays-MacBook-Pro:OysterCard_Lucy vijaykurian$ irb
2.6.0 :001 > require './lib/Oystercard'
 => true
2.6.0 :002 > oyster = Oystercard.new
 => #<Oystercard:0x00007f8a529723c0 @balance=0, @max_bal=90, @in_journey=false>
2.6.0 :003 > oyster.touch_in
Traceback (most recent call last):
        5: from /Users/vijaykurian/.rvm/rubies/ruby-2.6.0/bin/irb:23:in `<main>'
        4: from /Users/vijaykurian/.rvm/rubies/ruby-2.6.0/bin/irb:23:in `load'
        3: from /Users/vijaykurian/.rvm/rubies/ruby-2.6.0/lib/ruby/gems/2.6.0/gems/irb-1.0.0/exe/irb:11:in `<top (required)>'
        2: from (irb):3
        1: from /Users/vijaykurian/Projects/OysterCard_Lucy/lib/Oystercard.rb:33:in `touch_in'
RuntimeError (insufficient balance)
2.6.0 :004 > quit

7 - In order to pay for my journey
As a customer
When my journey is complete, I need the
correct amount deducted from my card

Object | Message
card   | Minimum Fare --> £2 ==> modify touch_out to call
                                 deduct method to charge £2
                                 for each completed journey.
                        Feature Test:
RED -
2.6.0 :001 > require './lib/Oystercard'
 => true
2.6.0 :002 > oyster = Oystercard.new
 => #<Oystercard:0x00007f8c501add10 @balance=0, @max_bal=90, @in_journey=false>
2.6.0 :003 > oyster.top_up(10)
 => 10
2.6.0 :004 > osyter.balance
Traceback (most recent call last):
        4: from /Users/vijaykurian/.rvm/rubies/ruby-2.6.0/bin/irb:23:in `<main>'
        3: from /Users/vijaykurian/.rvm/rubies/ruby-2.6.0/bin/irb:23:in `load'
        2: from /Users/vijaykurian/.rvm/rubies/ruby-2.6.0/lib/ruby/gems/2.6.0/gems/irb-1.0.0/exe/irb:11:in `<top (required)>'
        1: from (irb):4
NameError (undefined local variable or method `osyter' for main:Object)
Did you mean?  oyster
2.6.0 :005 > oyster.balance
 => 10
2.6.0 :006 > oyster.touch_in
 => true
2.6.0 :007 > oyster.touch_out
 => false
2.6.0 :008 > oyster.balance
 => 10
2.6.0 :009 > quit

GREEN -
2.6.0 :001 > require './lib/Oystercard'
 => true
2.6.0 :002 > oyster = Oystercard.new
 => #<Oystercard:0x00007febc08f2100 @balance=0, @max_bal=90, @in_journey=false, @min_balance=1, @min_fare=2>
2.6.0 :003 > oyster.balance
 => 0
 2.6.0 :005 > oyster.top_up(10)
  => 10
 2.6.0 :006 > oyster.balance
  => 10
 2.6.0 :007 > oyster.touch_in
  => true
 2.6.0 :008 > oyster.balance
  => 10
 2.6.0 :009 > oyster.touch_out
  => false
 2.6.0 :010 > oyster.balance
  => 8
 2.6.0 :011 > quit

 8 - In order to pay for my journey
 As a customer
 I need to know where I've travelled from

 Object | Message
 card   | Store entry_station name --> incorporate into touch_in

 9 - In order to know where I have been
 As a customer
 I want to see all my previous trips

 Object | Message
 card   | Store exit_station name --> incorporate into touch_out
 card   | Store a history of my journeys --> Hashes in an array
                     Feature Tests:(Entry and Exit Stations ONLY)
 GREEN -
 2.6.0 :001 > require './lib/Oystercard'
  => true
 2.6.0 :002 > oyster = Oystercard.new
  => #<Oystercard:0x00007f7fbb82d510 @balance=0, @max_bal=90, @in_journey=false, @min_balance=1, @min_fare=2, @entry_station=nil, @exit_station=nil>
 2.6.0 :003 > oyster.top_up(10)
  => 10
 2.6.0 :004 > oyster.touch_in
  => ""
 2.6.0 :005 > oyster.touch_in('bank')
 Traceback (most recent call last):
         5: from /Users/vijaykurian/.rvm/rubies/ruby-2.6.0/bin/irb:23:in `<main>'
         4: from /Users/vijaykurian/.rvm/rubies/ruby-2.6.0/bin/irb:23:in `load'
         3: from /Users/vijaykurian/.rvm/rubies/ruby-2.6.0/lib/ruby/gems/2.6.0/gems/irb-1.0.0/exe/irb:11:in `<top (required)>'
         2: from (irb):5
         1: from /Users/vijaykurian/Projects/OysterCard_Lucy/lib/Oystercard.rb:37:in `touch_in'
 RuntimeError (In journey, can't touch in again)
 2.6.0 :006 > oyster.touch_out('bank')
  => "bank"
 2.6.0 :007 > oyster.balance
  => 8
 2.6.0 :008 > quit
``


 Object | message
 -|-
 card | deduct penalty
