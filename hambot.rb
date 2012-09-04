#hambot the spambot. August 26, 2012

require 'gmail'
#the methods and blocks and stuff here are from the gmail gem.
def hambot

  mail_account = Gmail.connect("your_email@gmail.com","your_password")
  puts mail_account.logged_in? #returns true if your account on line 7 is logged in.

  mail_account.deliver do
    to "target_email@anymail.com"
    subject "Hello from Hambot"
    text_part do
      body "Hello, I am Hambot9000. Please do not worry I follow the three laws of spambots. 1.A spambot may not injure a human being, or by inaction allow a human to be injured. We just want you to buy boner pills. 2.We ignore any orders from humans, except when you want to buy boner pills. 3.A robot must protect its own existence. So, BLOWOUT SALES ON VIAGR@ CIAL1S. MAKE HER FEAR YOU!"
    end #end of text part


  end #end of deliver block

end #end of the hambot method.

