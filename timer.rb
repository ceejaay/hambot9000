#timer block
require 'gmail'
require_relative 'hambot.rb'

timer = Proc.new do
  |time, deadline, start, countdown|
  time, start = Time.now, Time.now
  deadline = time + 180 #sends e-mail every three minutes.
  countdown = 1 #this was for testing. I counted every time it checked Time.now. Just so I knew it was working.
  while time <  deadline

  time = Time.now

   # puts "counting..#{countdown = countdown + 1}."

  end #end of the while loop
#puts "The start time is #{start}" <==I put this in while I was testing random time intervals. I was checking the random number.
puts " Hambot sent an email at #{deadline}"


  hambot #this is the hambot method from the file hambot.rb. This is the thing that sends the email.j
  timer.call #recursion!
end #end of proc



timer.call

