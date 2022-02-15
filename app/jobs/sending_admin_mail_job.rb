

class SendingAdminMailJob < ApplicationJob
  queue_as :default

  def perform()
    # Do something later
    items = Item.where("created_at >= :start_date", {start_date: Date.today})
    users = User.where("created_at >= :start_date", {start_date: Date.today})
    AdminMailer.with(items: @items, users: @users).new_admin_email.deliver_now
    SendingAdminMailJob.set(wait_until: Time.now + 1.day).perform_later()
 
  end
end
