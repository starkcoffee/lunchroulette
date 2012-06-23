class RouletteController < ApplicationController
  def index
    @player = Player.new
  end

  def spin
    @players = Player.all
  end
end
