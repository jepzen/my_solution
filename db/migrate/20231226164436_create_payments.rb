class CreatePayments < ActiveRecord::Migration[7.0]
  def change
    create_table :payments do |t|
      t.decimal :amount
      t.string :currency
      t.datetime :timestamp

      t.timestamps
    end
  end
end
