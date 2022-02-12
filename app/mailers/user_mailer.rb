class UserMailer < ApplicationMailer

    def new_user_email
        @user = params[:user]

       mail(to: "aalmutairi@mrsool.co", subject: "New user created")
    end
end
