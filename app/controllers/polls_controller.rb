class PollsController < ApplicationController
  def new
    @poll = Poll.new
  end

  def create
    @poll = Poll.new(poll_params)
    choices_param = params[:choices]
    @choices = []
    choices_param.each.with_index(1) do |choice, index|
      choice = Choice.create(:text => choice, :location => index)
      @choices.push(choice)
    end
    @poll.choices = @choices
    @poll.user = User.find(params[:user_id])
    respond_to do |format|
      if @poll.save
        format.html { redirect_to @poll, notice: 'Poll was successfully created.' }
        format.json { render json: @poll }
      else
        format.html { render :new }
        format.json { render json: @poll.errors.full_messages, status: :unprocessable_entity }
      end
    end
  end

  private
  def pool_params
    params.require(:project).permit(:title, choices_attributes: [:id, :attr1, :attr2, :_destroy])
  end
end
