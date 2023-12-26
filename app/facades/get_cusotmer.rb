class GetCustomer
  # Mount engine ?

  def initialize(customer_engine)
    @customer_engine = customer_engine || CustomerEngine::CustomerEngine.new
  end

  def get_customer(id)
    @customer_engine.get_cutomer(id)
  end
end
