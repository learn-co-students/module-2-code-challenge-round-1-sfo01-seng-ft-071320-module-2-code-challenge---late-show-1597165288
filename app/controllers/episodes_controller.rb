class EpisodesController < ApplicationController

  def index
    @episodes = Episode.all
  end


  def new 
    @episode = Episode.new()
  end

  def Create
    @episode = Episode.new()
  end

  def show 

  end

  
end
