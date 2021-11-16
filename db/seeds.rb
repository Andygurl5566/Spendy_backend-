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

        bill_name1: Faker::Commerce.department ,
        bill_amount1: Faker::Commerce.price ,
        category_name1: Faker::Commerce.product_name ,

        bill_name2: Faker::Commerce.department ,
        bill_amount2: Faker::Commerce.price ,
        category_name2: Faker::Commerce.product_name ,

        bill_name3: Faker::Commerce.department ,
        bill_amount3: Faker::Commerce.price ,
        category_name3: Faker::Commerce.product_name, 

        wallet_id: rand(1..10)
    )
end





puts "✅ Done seeding!"
