class PagesController < ApplicationController
  
  def search
    @title = "Search"
  end  
  
  def front
    @title = "Front"
  end  
  
  def about
    @title = "About"
  end

  def intro
    @title = "Introduction"
  end
  
  def map
    @title = "Map"
  end

  def bibli
    @title ="Bibliography"
  end
 
  def colophon
    @title = "Colophon"
  end
  
  def back
    @title = "Back"
  end  

  def antiquity
    @title = "Antiquity"
  end
  
  def wadi
    @title = "Wadi"
  end
  
end
