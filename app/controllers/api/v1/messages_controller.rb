class Api::V1::MessagesController < Api::V1::BaseController
  before_action :set_message, only: [:show, :update, :destroy]

  def index
    @messages = Message.all
  end

  def show
  end

  def update
    if @message.update(message_params)
      render :show
    else
      render_error
    end
  end

  def destroy
    @message.destroy
    head :no_content
  end

  private

  def set_message
    @message = Message.find(params[:id])
  end

  def message_params
    params.require(:message).permit(:message, :counter)
  end

  def render_error
    render json: { errors: @message.errors.full_messages },
      status: :unprocessable_entity
  end
end
