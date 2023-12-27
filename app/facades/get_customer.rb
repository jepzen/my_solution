class GetCustomer
  
  def initialize(customer_engine)
    # Intialize the customer engine (not sure I got the namespace correct here)
    @customer_engine = customer_engine || Engines::Customer::GetCustomer.new
  end

  def get_customer(customer_id)
    result = @customer_engine.call(customer_id)
    result.customer
  end
end
