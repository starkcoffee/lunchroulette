require 'groupier'

class RouletteController < ApplicationController
  include Groupier

  def index
    @player = Player.new
  end

  def spin
    players = Player.all
    @groups = groups_of(4, players)
  end
end
