class ItemMailer < ApplicationMailer

    def new_item_email
        @item = params[:item]
    
        mail(to: "aalmutairi@mrsool.co", subject: "New Item created")
    end
end
