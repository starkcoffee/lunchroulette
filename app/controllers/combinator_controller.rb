class CombinatorController < ApplicationController
  def show
      @combinator_name = params[:combinator_name]
      @combinator = Combinator.find_by_name(@combinator_name)

      if @combinator == nil
          puts "hello"
          render :template => "combinator/new"
      end
  end
end
