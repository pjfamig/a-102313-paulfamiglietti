class BlogController < ApplicationController
  def index
    @directories = Dir['posts/*.txt']  #generates array of text file
  end
end
