require "customer/version"
require "customer/engine"



module Customer
  class GetCustomer 
    include Interactor

    def call
      set_customer
    end

    private 

    def set_customer
      context.customer = Customer.find(context.customer_id)
    end

  end

end
