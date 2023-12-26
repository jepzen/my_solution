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
    context.payment = Payment.find()

    if context.payment.nil?
      context.fail # No payment found
    end
  end

  def set_customer
    context.customer = GetCustomer.new.get_customer(@payment.customer_id)

    if context.customer.nil?
      context.fail # No customer found
    end
  end

  def prepare_result
    # context.result =
  end

end
