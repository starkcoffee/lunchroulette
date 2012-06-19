require 'spec_helper'

describe RouletteController do

  describe "GET 'signup'" do
    it "returns http success" do
      get 'signup'
      response.should be_success
    end
  end

  describe "GET 'index'" do
    it "returns http success" do
      get 'index'
      response.should be_success
    end
  end

end
