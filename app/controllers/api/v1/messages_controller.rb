class Api::V1::MessagesController < Api::V1::BaseController
  before_action :set_message, only: [:show, :destroy]

  def index
    @messages = Message.all
  end

  def show
  end

  def destroy
    @message.destroy
    head :no_content
  end

  private

  def set_message
    @message = Message.find(params[:id])
  end
end
