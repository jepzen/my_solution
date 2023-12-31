class CreatePayments < ActiveRecord::Migration[7.0]
  def change
    create_table :payments do |t|
      t.decimal :amount
      t.string :currency
      t.datetime :timestamp
      t.string :customer_id

      t.timestamps
    end
  end
end
