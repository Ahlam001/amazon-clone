class SendingMailJob < ApplicationJob
  queue_as :default

  def perform(user)
    # Do something later
  
    UserMailer.with(user: @user).new_user_email(user.id).deliver_now
  end
end
