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
    bill.update(
      bill_name: params[:bill_name],
      bill_amount: params[:bill_amount],
      category_name: params[:category_name]
    )
    a_bill.to_json
end


end
#--------------------------------------------------------------------