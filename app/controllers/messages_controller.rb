class MessagesController < ApplicationController

  def create
    # Pusher['test_channel'].trigger('my_event', {
    #         message: "lookit Linda"
    # })
    @new_message = "lookit Linda"

    render partial: "dashboards/message", locals: { new_message: @new_message }
  end
end
