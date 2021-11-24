require 'faker'
puts "🌱 Seeding spices..."

Bill.destroy_all
User.destroy_all
Wallet.destroy_all


User.create( name: "Aidan", password: "password")
User.create( name: "Andrea", password: "password")
User.create( name: "Yeison", password: "password")

Wallet.create( wallet_name: "Aidan's Wallet",  amount: rand(70000..90000), user_id: 1)
Wallet.create( wallet_name: "Andrea's Wallet",  amount: rand(70000..90000), user_id: 2)
Wallet.create( wallet_name: "Yeison's Wallet",  amount: rand(70000..90000), user_id: 3)








puts "✅ Done seeding!"
