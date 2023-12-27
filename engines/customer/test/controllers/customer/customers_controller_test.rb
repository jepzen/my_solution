require "test_helper"

module Customer
  class CustomersControllerTest < ActionDispatch::IntegrationTest
    include Engine.routes.url_helpers

    setup do
      @customer = customer_customers(:one)
    end

    test "should get index" do
      get customers_url
      assert_response :success
    end

    test "should get new" do
      get new_customer_url
      assert_response :success
    end

    test "should create customer" do
      assert_difference("Customer.count") do
        post customers_url, params: { customer: { date_of_birth: @customer.date_of_birth, name: @customer.name, place_of_birth: @customer.place_of_birth } }
      end

      assert_redirected_to customer_url(Customer.last)
    end

    test "should show customer" do
      get customer_url(@customer)
      assert_response :success
    end

    test "should get edit" do
      get edit_customer_url(@customer)
      assert_response :success
    end

    test "should update customer" do
      patch customer_url(@customer), params: { customer: { date_of_birth: @customer.date_of_birth, name: @customer.name, place_of_birth: @customer.place_of_birth } }
      assert_redirected_to customer_url(@customer)
    end

    test "should destroy customer" do
      assert_difference("Customer.count", -1) do
        delete customer_url(@customer)
      end

      assert_redirected_to customers_url
    end
  end
end
