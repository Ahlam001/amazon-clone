class AdminMailer < ApplicationMailer
    
    def new_admin_email
       
      

       mail(to: "aalmutairi@mrsool.co", subject: "Summery of users and items")
    end
end
