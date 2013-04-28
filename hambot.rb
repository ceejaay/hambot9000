#hambot the spambot. August 26, 2012
#this file has the hambot method. It uses gmail to send email out. 
#You can use this by its self or you can use it with timer.rb.
#timer.rb won't work without this file.

require '~/ruby/hambot/secret.rb'
require 'gmail'
#the methods and blocks and stuff here are from the gmail gem.
def hambot

  mail_account = Gmail.connect("#{@secret_email}","#{@secret_password}")
  puts mail_account.logged_in? #returns true if your account on line 7 is logged in.

  mail_account.deliver do
    to "chad.jemmett@gmail.com"
    subject "Hello from Hambot"
    text_part do
      body "Hello from the Hambot9000! This email was sent at #{Time.now.getlocal}"
    end #end of text part


  end #end of deliver block

end #end of the hambot method.

hambot
