class HomeController < ApplicationController
   layout "home"
   
  def home
   @title = "Home"
  end
  
  def contact
    @title = "Contact"
  end
  
  def sign
    @title = "Sign"
  end

end