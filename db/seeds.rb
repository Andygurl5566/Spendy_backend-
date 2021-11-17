require 'faker'
puts "🌱 Seeding spices..."

Bill.destroy_all
User.destroy_all
Wallet.destroy_all

10.times do 
    user  = User.create(
        name: Faker::Name.name,
        occupation: Faker::Job.title
    )
end


10.times do 

wallet = Wallet.create(
    wallet_name: Faker::Company.name,
    amount: Faker::Commerce.price, 
    user_id: rand(1..10) 
)

end

10.times do 

    bills = Bill.create(
        bill_name: Faker::Commerce.department ,
        bill_amount: Faker::Commerce.price ,
        category_name: Faker::Commerce.product_name ,
        wallet_id: rand(1..10)
    )
end





puts "✅ Done seeding!"
