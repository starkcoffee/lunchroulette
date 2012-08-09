require 'lunch_groupier_support'
require 'lunch_pics'

class RouletteController < ApplicationController
  include LunchGroupierSupport

  def signup
    @player = Player.new
  end

  def spin
    @groups = lunch_groupier.create_groups
    @pic = LunchPics.new.take_random(1).first
  end

end
