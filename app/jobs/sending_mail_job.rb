
require 'active_support/core_ext/date_and_time/calculations'
class SendingMailJob < ApplicationJob
  queue_as :default

  def perform(user)
    # Do something later
    puts "add mail to champ job started---------------------------------------------------"
    puts "#{user.email} add successfully"
    UserMailer.with(user: @user).new_user_email(user.id).deliver_now
  end
end
