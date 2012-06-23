class RouletteController < ApplicationController
  def index
    @player = Player.new
  end
end
