require 'gmail'
class Hambot

  def initialize account, password
    @hambot = Gmail.connect("account", "password")
   return @hambot.logged_in?
  end

end
