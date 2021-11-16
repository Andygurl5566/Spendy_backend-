class CreateUsers < ActiveRecord::Migration[6.1]
  def change
    create_table :users do |t|
      t.string :name
      t.string :occupation
      t.boolean :logged_in

  end
  end
end
