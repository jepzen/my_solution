# frozen_string_literal: true

class GetPayment
  include Interactor

  def call
    set_payment
    set_customer
    prepare_result
  end

  private

  def set_payment
    context.payment = Payment.find(context.payment_id)

    context.fail! unless context.payment.present
  end

  def set_customer
    context.customer = GetCustomer.new.get_customer(context.payment.customer_id)

    context.fail! unless context.customer.present # No customer found
  end

  def prepare_result
    # TODO: Set the result. Merge data from the two models into one, maybe with some decorater gem
    context.result = 
  end

end
