class StaticPagesController < ApplicationController

  def home
  end
  
  def about
    @user = "pjfamig@gmail.com"
  end
  
  def contact
  end

end
