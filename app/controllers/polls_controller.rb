class PollsController < ApplicationController
  def new
  	@poll = Poll.new
  end

  def create
  end
end
