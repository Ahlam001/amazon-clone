# Preview all emails at http://localhost:3000/rails/mailers/item_mailer
class ItemMailerPreview < ActionMailer::Preview
    def new_item_email
        item = Item.new(name: 'book', price: 22)
        
        ItemMailer.with(item: item).new_item_email

    end
end
