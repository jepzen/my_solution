class CreateCustomerCustomers < ActiveRecord::Migration[7.0]
  def change
    create_table :customer_customers do |t|
      t.datetime :date_of_birth
      t.string :name
      t.string :place_of_birth

      t.timestamps
    end
  end
end
