class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
 # Bill Routers---------------------------------------------
 #We can probably break these into different controllers
 
  get "/" do
    { message: "Howdy I'm working! 🚀🚀🚀 Please don't break me " }.to_json
  end

  #gets all bills
  get "/bill" do
    bills = Bill.all
    bills.to_json
  end

  #gets a specific bill

  get "/bill/:id" do
    a_bill = Bill.find(params[:id])
    a_bill.to_json

end

  
#deletes a specific bill

delete "/bill/:id" do
  a_bill = Bill.find(params[:id])
  a_bill.destroy
  a_bill.to_json
end

#creates a new bill

post "/bill" do
    make_bill = Bill.create(
    bill_name: params[:bill_name],
    bill_amount: params[:bill_amount],
    category_name: params[:category_name]
    )
    make_bill.to_json
end

# edits a specific bill

patch "/bill/:id" do
    a_bill = Bill.find(params[:id])
    a_bill.update(
      bill_name: params[:bill_name],
      bill_amount: params[:bill_amount],
      category_name: params[:category_name],

      bill_name1: params[:bill_name1],
      bill_amount1: params[:bill_amount1],
      category_name1: params[:category_name1],

      bill_name2: params[:bill_name2],
      bill_amount2: params[:bill_amount2],
      category_name2: params[:category_name2],

      bill_name3: params[:bill_name3],
      bill_amount3: params[:bill_amount3],
      category_name3: params[:category_name3]
    )
    a_bill.to_json
end
#--------------------------------------------------------------------

#Wallet Routers------------------------------------------------------

#gets all wallets
get "/wallet" do
  all_wallets = Wallet.all
  all_wallets.to_json
end

#gets a specific wallet

get "/wallet/:id" do
  a_wallet = Wallet.find(params[:id])
  a_wallet.to_json
end

get "/wallet/total/:id" do
  a_wallet = Wallet.find(params[:id])
  a_wallet.total_amount.to_json
end

#gets all bills from a specific wallet

  get "/wallet/bills/:id" do
    wallet_bills = Wallet.find(params[:id]).bills
    wallet_bills.to_json

  end

#deletes a specific wallet

delete "/wallet/:id" do
  a_wallet = Wallet.find(params[:id])
  a_wallet.destroy
  a_wallet.to_json
end

#creates a new wallet

post "/wallet" do
  make_wallet = Wallet.create(
    wallet_name: params[:wallet_name],
    amount: params[:amount]
  )
  make_wallet.to_json
end

# edits a specific wallet

patch "/wallet/:id" do
  a_wallet = Wallet.find(params[:id])
  a_wallet.update(
    wallet_name: params[:wallet_name],
    amount: params[:amount]
  )
  a_wallet.to_json
end

#___________________________________________________________

#User Routers For Aidan_______________________________________________

get "/user" do
  a_user = User.all
  a_user.to_json
end

get "/user/:id" do
  a_user = User.find(params[:id])
  a_user.to_json
end

delete "/user/:id" do
  a_user.find(params[:id])
  a_user.destroy
  a_user.to_json
end

post "/user" do
  make_user = User.create(
    name: params[:name],
    occupation: params[:occupation],
    logged_in: params[:logged_in]
  )
  make_user.to_json
end

patch "/user/:id" do
  a_user = User.find(params[:id])
  a_user.update(
    name: params[:name],
    logged_in: params[:logged_in]
    # logged_in: !logged_in
  )
  a_user.to_json
end
end
