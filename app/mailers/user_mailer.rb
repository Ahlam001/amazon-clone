class UserMailer < ApplicationMailer


    def new_user_email(id)
       
        @user =  User.find(id)

       mail(to: "aalmutairi@mrsool.co", subject: "New user created")
    end
end
