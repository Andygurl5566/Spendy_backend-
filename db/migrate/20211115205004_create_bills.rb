class CreateBills < ActiveRecord::Migration[6.1]
  def change 
    create_table :bills do |t|
      t.string :bill_name
      t.integer :bill_amount
      t.string :category_name
      
      t.string :bill_name1
      t.integer :bill_amount1
      t.string :category_name1
     
      t.string :bill_name2
      t.integer :bill_amount2
      t.string :category_name2
     
      t.string :bill_name3
      t.integer :bill_amount3
      t.string :category_name3
      
      t.integer :wallet_id
    end
  end
end
