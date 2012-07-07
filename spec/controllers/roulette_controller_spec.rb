require 'spec_helper'

describe RouletteController do

  describe "spin" do
  end

  describe "GET 'index'" do
    it "returns http success" do
      get 'index'
      response.should be_success
    end
  end

end
