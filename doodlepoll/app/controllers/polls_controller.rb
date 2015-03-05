class PollsController < ApplicationController
  def index
    @polls = Poll.all
    render :index
  end

  def show
    @poll = Poll.find(params[:id])
    render :show
  end

  def new
    @poll = Poll.new
    render :new
  end

  def create
    @poll = Poll.new(params[:poll])
    @poll.save
    redirect_to action: 'show', id: @poll.id
  end


end
